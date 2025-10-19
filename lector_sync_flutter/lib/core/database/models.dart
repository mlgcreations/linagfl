// Modelos Isar para Sistema de Lectura P2P
// Mantiene funcionalidades del sistema actual + nuevas features

import 'package:isar/isar.dart';

part 'models.g.dart';

// ============================================
// 1. USUARIO (equivalente a tabla usuarios)
// ============================================

@collection
class Usuario {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String userId; // UUID único generado localmente
  
  late String nombre;
  late String? email;
  
  @Index()
  late DateTime fechaRegistro;
  
  DateTime? ultimaActividad;
  
  // Dispositivo actual activo (rey)
  String? dispositivoActualId;
  
  // Configuración
  late bool modoOffline;
  late String formatoCitacionDefault; // "APA", "MLA", "Chicago"
}

// ============================================
// 2. DISPOSITIVO (equivalente a dispositivos)
// ============================================

@collection
class Dispositivo {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String dispositivoId; // UUID único
  
  late String usuarioId;
  late String nombre; // "laptop", "celular", etc.
  late String tipo; // "android", "ios", "linux", "windows"
  
  late bool esRey; // Solo uno puede ser rey a la vez
  late bool activo; // Está leyendo ahora
  
  String? carpetaLibros;
  String? lectorApp; // "flutter_reader", "foliate", "koreader"
  
  DateTime? ultimoHeartbeat;
  
  @Index()
  late DateTime fechaVinculacion;
  
  // Para P2P
  String? peerIdWebRTC;
  String? ipLocal;
}

// ============================================
// 3. LIBRO (equivalente a libros + metadata)
// ============================================

@collection
class Libro {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String libroId; // UUID
  
  late String usuarioId;
  late String titulo;
  
  String? subtitulo;
  String? autor;
  String? editorial;
  int? anioPublicacion;
  String? isbn;
  String? idioma;
  
  late String rutaArchivo; // Path local al archivo
  late String tipoArchivo; // "pdf", "epub", "mobi"
  
  late double ultimoProgreso; // 0-100
  int? totalPaginas;
  int? paginaActual;
  
  String? dispositivoActualizador;
  
  @Index()
  late DateTime fechaAgregado;
  
  DateTime? fechaInicio;
  DateTime? fechaUltimaLectura;
  DateTime? fechaCompletado;
  
  late bool completado;
  
  // Categorías (lista de IDs)
  List<String> categoriaIds = [];
  
  // Metadata para citaciones
  String? lugarPublicacion;
  String? edicion;
  String? volumen;
  String? numeroRevista;
  String? doi;
  String? url;
}

// ============================================
// 4. CATEGORIA (NUEVO - clasificación)
// ============================================

@collection
class Categoria {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String categoriaId;
  
  late String usuarioId;
  late String nombre;
  String? descripcion;
  String? color; // Hex color code
  String? icono; // Material icon name
  
  // Jerarquía (categorías anidadas)
  String? categoriaPadreId;
  
  @Index()
  late DateTime fechaCreacion;
}

// ============================================
// 5. PROGRESO (equivalente a historial)
// ============================================

@collection
class ProgresoCommit {
  Id id = Isar.autoIncrement;
  
  late String commitId; // UUID
  late String libroId;
  late String usuarioId;
  late String dispositivoId;
  
  late double progresoAnterior;
  late double progresoNuevo;
  
  int? paginaAnterior;
  int? paginaNueva;
  
  @Index()
  late DateTime fecha;
  
  // Tiempo de lectura en minutos
  int? tiempoLecturaMinutos;
  
  // Notas del commit (opcional)
  String? nota;
  
  // Hash simple para versionado
  String? hashCommit; // SHA256 de los datos
}

// ============================================
// 6. CITA (NUEVO - sistema de citas)
// ============================================

@collection
class Cita {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String citaId;
  
  late String libroId;
  late String usuarioId;
  
  late String texto; // Texto citado
  
  // Ubicación en el libro
  int? paginaInicio;
  int? paginaFin;
  String? capitulo;
  String? seccion;
  
  // Contexto adicional
  String? notaPersonal;
  List<String> tags = [];
  
  // Categorización
  List<String> categoriaIds = [];
  
  @Index()
  late DateTime fechaCreacion;
  
  DateTime? fechaModificacion;
  
  // Para exportar
  String? formatoPreferido; // "APA", "MLA", etc.
  String? citaFormateada; // Cache de la cita ya formateada
  
  // Tipo de cita
  late String tipo; // "textual", "parafraseada", "idea"
  
  // Imagen (si es captura de pantalla)
  String? rutaImagen;
}

// ============================================
// 7. NOTA (NUEVO - anotaciones generales)
// ============================================

@collection
class Nota {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String notaId;
  
  late String libroId;
  late String usuarioId;
  
  late String titulo;
  late String contenido;
  
  // Ubicación (opcional)
  int? pagina;
  double? posicionPorcentaje;
  
  // Clasificación
  List<String> categoriaIds = [];
  List<String> tags = [];
  
  @Index()
  late DateTime fechaCreacion;
  
  DateTime? fechaModificacion;
  
  // Color para destacar
  String? color;
  
  // Relacionar con citas
  List<String> citaIds = [];
}

// ============================================
// 8. SESION (para estadísticas)
// ============================================

@collection
class SesionLectura {
  Id id = Isar.autoIncrement;
  
  late String sesionId;
  late String libroId;
  late String usuarioId;
  late String dispositivoId;
  
  @Index()
  late DateTime inicio;
  
  DateTime? fin;
  int? duracionMinutos;
  
  late bool activa;
  
  // Progreso durante la sesión
  double? progresoInicial;
  double? progresoFinal;
  
  int? paginasLeidas;
}

// ============================================
// 9. SINCRONIZACION (tracking P2P)
// ============================================

@collection
class EventoSincronizacion {
  Id id = Isar.autoIncrement;
  
  late String eventoId;
  late String usuarioId;
  
  late String dispositivoOrigenId;
  String? dispositivoDestinoId;
  
  late String tipoEvento; // "heartbeat", "commit", "cita", "nota"
  late String entidadId; // ID de lo que se sincronizó
  
  @Index()
  late DateTime fecha;
  
  late bool exitoso;
  String? error;
  
  // Para resolver conflictos
  late int version;
  String? hashDatos;
}

// ============================================
// 10. ESTADISTICAS (resumen precalculado)
// ============================================

@collection
class Estadistica {
  Id id = Isar.autoIncrement;
  
  late String usuarioId;
  late String periodo; // "dia", "semana", "mes", "año"
  
  @Index()
  late DateTime fecha;
  
  late int librosLeidos;
  late int librosCompletados;
  late int citasCreadas;
  late int notasCreadas;
  late int minutosLectura;
  late int paginasLeidas;
}
