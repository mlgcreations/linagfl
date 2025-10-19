import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'models.dart';

class IsarService {
  static final IsarService _instance = IsarService._internal();
  factory IsarService() => _instance;
  IsarService._internal();

  Isar? _isar;

  Future<Isar> get isar async {
    if (_isar != null) return _isar!;
    _isar = await _initIsar();
    return _isar!;
  }

  Future<Isar> _initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    
    final isar = await Isar.open(
      [
        UsuarioSchema,
        DispositivoSchema,
        LibroSchema,
        CategoriaSchema,
        ProgresoCommitSchema,
        CitaSchema,
        NotaSchema,
        SesionLecturaSchema,
        EventoSincronizacionSchema,
        EstadisticaSchema,
      ],
      directory: dir.path,
      name: 'lector_sync',
    );

    print('✅ Base de datos Isar inicializada en: ${dir.path}');
    return isar;
  }

  // Cerrar base de datos
  Future<void> close() async {
    await _isar?.close();
    _isar = null;
  }

  // Limpiar base de datos (para testing)
  Future<void> clear() async {
    final db = await isar;
    await db.writeTxn(() async {
      await db.clear();
    });
    print('🗑️  Base de datos limpiada');
  }
}
