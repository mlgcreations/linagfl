import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'core/database/isar_service.dart';
import 'features/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicializar base de datos
  final isarService = IsarService();
  await isarService.isar;
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lector Sync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(
        // Por ahora usuario hardcodeado, luego implementaremos auth
        usuarioId: const Uuid().v4(),
      ),
    );
  }
}
