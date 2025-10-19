import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import '../database/isar_service.dart';
import '../database/models.dart';

class BookService {
  final IsarService _isarService = IsarService();
  final Uuid _uuid = const Uuid();

  // Obtener todos los libros del usuario
  Future<List<Libro>> obtenerLibros(String usuarioId) async {
    final isar = await _isarService.isar;
    
    return await isar.libros
        .filter()
        .usuarioIdEqualTo(usuarioId)
        .sortByFechaUltimaLecturaDesc()
        .findAll();
  }

  // Agregar libro nuevo
  Future<Libro> agregarLibro({
    required String usuarioId,
    required String titulo,
    required String rutaArchivo,
    required String tipoArchivo,
    String? autor,
    int? totalPaginas,
  }) async {
    final isar = await _isarService.isar;

    final libro = Libro()
      ..libroId = _uuid.v4()
      ..usuarioId = usuarioId
      ..titulo = titulo
      ..autor = autor
      ..rutaArchivo = rutaArchivo
      ..tipoArchivo = tipoArchivo
      ..totalPaginas = totalPaginas
      ..ultimoProgreso = 0.0
      ..fechaAgregado = DateTime.now()
      ..completado = false;

    await isar.writeTxn(() async {
      await isar.libros.put(libro);
    });

    print('✅ Libro agregado: $titulo');
    return libro;
  }

  // Actualizar progreso
  Future<void> actualizarProgreso({
    required String libroId,
    required double nuevoProgreso,
    int? nuevaPagina,
    String? dispositivoId,
  }) async {
    final isar = await _isarService.isar;

    final libro = await isar.libros
        .filter()
        .libroIdEqualTo(libroId)
        .findFirst();

    if (libro == null) {
      print('❌ Libro no encontrado: $libroId');
      return;
    }

    // Crear commit de progreso
    final commit = ProgresoCommit()
      ..commitId = _uuid.v4()
      ..libroId = libroId
      ..usuarioId = libro.usuarioId
      ..dispositivoId = dispositivoId ?? 'local'
      ..progresoAnterior = libro.ultimoProgreso
      ..progresoNuevo = nuevoProgreso
      ..paginaAnterior = libro.paginaActual
      ..paginaNueva = nuevaPagina
      ..fecha = DateTime.now()
      ..hashCommit = _generarHash(libroId, nuevoProgreso);

    // Actualizar libro
    libro.ultimoProgreso = nuevoProgreso;
    libro.paginaActual = nuevaPagina;
    libro.fechaUltimaLectura = DateTime.now();
    libro.completado = nuevoProgreso >= 100.0;

    if (libro.fechaInicio == null) {
      libro.fechaInicio = DateTime.now();
    }

    if (libro.completado && libro.fechaCompletado == null) {
      libro.fechaCompletado = DateTime.now();
    }

    await isar.writeTxn(() async {
      await isar.progresoCommits.put(commit);
      await isar.libros.put(libro);
    });

    print('✅ Progreso actualizado: ${libro.titulo} → $nuevoProgreso%');
  }

  // Obtener libro por ID
  Future<Libro?> obtenerLibro(String libroId) async {
    final isar = await _isarService.isar;
    
    return await isar.libros
        .filter()
        .libroIdEqualTo(libroId)
        .findFirst();
  }

  // Buscar libros
  Future<List<Libro>> buscarLibros(String usuarioId, String query) async {
    final isar = await _isarService.isar;
    
    return await isar.libros
        .filter()
        .usuarioIdEqualTo(usuarioId)
        .group((q) => q
            .tituloContains(query, caseSensitive: false)
            .or()
            .autorContains(query, caseSensitive: false))
        .findAll();
  }

  // Eliminar libro
  Future<void> eliminarLibro(String libroId) async {
    final isar = await _isarService.isar;

    await isar.writeTxn(() async {
      // Eliminar commits relacionados
      await isar.progresoCommits
          .filter()
          .libroIdEqualTo(libroId)
          .deleteAll();

      // Eliminar citas relacionadas
      await isar.citas
          .filter()
          .libroIdEqualTo(libroId)
          .deleteAll();

      // Eliminar notas relacionadas
      await isar.notas
          .filter()
          .libroIdEqualTo(libroId)
          .deleteAll();

      // Eliminar libro
      await isar.libros
          .filter()
          .libroIdEqualTo(libroId)
          .deleteAll();
    });

    print('🗑️  Libro eliminado');
  }

  // Obtener historial de progreso
  Future<List<ProgresoCommit>> obtenerHistorial(String libroId) async {
    final isar = await _isarService.isar;
    
    return await isar.progresoCommits
        .filter()
        .libroIdEqualTo(libroId)
        .sortByFechaDesc()
        .findAll();
  }

  // Generar hash simple para commit
  String _generarHash(String libroId, double progreso) {
    final data = '$libroId-$progreso-${DateTime.now().millisecondsSinceEpoch}';
    return data.hashCode.toString();
  }
}
