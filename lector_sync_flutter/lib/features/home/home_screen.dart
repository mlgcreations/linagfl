import 'package:flutter/material.dart';
import '../../core/database/models.dart';
import '../../core/services/book_service.dart';

class HomeScreen extends StatefulWidget {
  final String usuarioId;

  const HomeScreen({super.key, required this.usuarioId});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BookService _bookService = BookService();
  List<Libro> _libros = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _cargarLibros();
  }

  Future<void> _cargarLibros() async {
    setState(() => _loading = true);
    
    try {
      final libros = await _bookService.obtenerLibros(widget.usuarioId);
      setState(() {
        _libros = libros;
        _loading = false;
      });
    } catch (e) {
      print('Error cargando libros: $e');
      setState(() => _loading = false);
    }
  }

  Future<void> _agregarLibroDemo() async {
    await _bookService.agregarLibro(
      usuarioId: widget.usuarioId,
      titulo: 'El Capital',
      autor: 'Karl Marx',
      rutaArchivo: '/ruta/al/archivo.pdf',
      tipoArchivo: 'pdf',
      totalPaginas: 900,
    );

    _cargarLibros();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📚 Mi Biblioteca'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _cargarLibros,
            tooltip: 'Recargar',
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _libros.isEmpty
              ? _buildEmptyState()
              : _buildLibrosList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarLibroDemo,
        tooltip: 'Agregar libro demo',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.library_books_outlined,
            size: 100,
            color: Colors.grey,
          ),
          const SizedBox(height: 20),
          const Text(
            'No tienes libros aún',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Text(
            'Presiona + para agregar un libro de demostración',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildLibrosList() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _libros.length,
      itemBuilder: (context, index) {
        final libro = _libros[index];
        return _buildLibroCard(libro);
      },
    );
  }

  Widget _buildLibroCard(Libro libro) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getColorProgreso(libro.ultimoProgreso),
          child: Text(
            '${libro.ultimoProgreso.toInt()}%',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          libro.titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (libro.autor != null)
              Text('📖 ${libro.autor}'),
            const SizedBox(height: 4),
            LinearProgressIndicator(
              value: libro.ultimoProgreso / 100,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                _getColorProgreso(libro.ultimoProgreso),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Última lectura: ${_formatearFecha(libro.fechaUltimaLectura)}',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'actualizar',
              child: Row(
                children: [
                  Icon(Icons.update),
                  SizedBox(width: 8),
                  Text('Actualizar progreso'),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 'eliminar',
              child: Row(
                children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Eliminar', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
          onSelected: (value) => _onMenuAction(value, libro),
        ),
        onTap: () => _verDetalles(libro),
      ),
    );
  }

  Color _getColorProgreso(double progreso) {
    if (progreso >= 100) return Colors.green;
    if (progreso >= 50) return Colors.blue;
    if (progreso >= 25) return Colors.orange;
    return Colors.grey;
  }

  String _formatearFecha(DateTime? fecha) {
    if (fecha == null) return 'Nunca';
    final ahora = DateTime.now();
    final diferencia = ahora.difference(fecha);

    if (diferencia.inDays == 0) return 'Hoy';
    if (diferencia.inDays == 1) return 'Ayer';
    if (diferencia.inDays < 7) return 'Hace ${diferencia.inDays} días';
    return '${fecha.day}/${fecha.month}/${fecha.year}';
  }

  void _onMenuAction(dynamic value, Libro libro) async {
    if (value == 'actualizar') {
      _mostrarDialogProgreso(libro);
    } else if (value == 'eliminar') {
      _confirmarEliminar(libro);
    }
  }

  void _mostrarDialogProgreso(Libro libro) {
    final controller = TextEditingController(
      text: libro.ultimoProgreso.toStringAsFixed(0),
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Actualizar Progreso'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Progreso (%)',
            hintText: '0-100',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () async {
              final progreso = double.tryParse(controller.text) ?? 0;
              await _bookService.actualizarProgreso(
                libroId: libro.libroId,
                nuevoProgreso: progreso.clamp(0, 100),
              );
              if (mounted) {
                Navigator.pop(context);
                _cargarLibros();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('✅ Progreso actualizado')),
                );
              }
            },
            child: const Text('Actualizar'),
          ),
        ],
      ),
    );
  }

  void _confirmarEliminar(Libro libro) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar Libro'),
        content: Text('¿Eliminar "${libro.titulo}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () async {
              await _bookService.eliminarLibro(libro.libroId);
              if (mounted) {
                Navigator.pop(context);
                _cargarLibros();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('🗑️  Libro eliminado')),
                );
              }
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
  }

  void _verDetalles(Libro libro) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(libro.titulo),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (libro.autor != null) Text('Autor: ${libro.autor}'),
            if (libro.totalPaginas != null)
              Text('Páginas: ${libro.totalPaginas}'),
            Text('Progreso: ${libro.ultimoProgreso.toStringAsFixed(1)}%'),
            Text('Agregado: ${_formatearFecha(libro.fechaAgregado)}'),
            if (libro.completado)
              const Text(
                '\n✅ Completado',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}
