import 'package:flutter/material.dart';
// Importación de tus archivos en la carpeta mispantallas
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(const HomeDepotBlueApp());
}

class HomeDepotBlueApp extends StatelessWidget {
  const HomeDepotBlueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Depot Aarón',
      // CONFIGURACIÓN DE RUTAS NOMBRADAS EXCLUSIVAMENTE AQUÍ
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}