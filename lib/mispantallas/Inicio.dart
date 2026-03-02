import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  // URLs de GitHub
  final String urlPrincipal = 'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/rotomartillo.jpg';
  final String img1 = 'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/imagen1.jpg';
  final String img2 = 'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/img2.jpg';
  final String img3 = 'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/img3.jpg';

  late String imagenActual;

  @override
  void initState() {
    super.initState();
    imagenActual = urlPrincipal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D47A1),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text('Detalle de Producto', style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person_outline, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.blue[50],
              child: const Text(
                'Aarón Dominguez - Grupo: 6to I',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0D47A1)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
              child: Text('Rotomartillo SDS Plus', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('\$3,450.00', style: TextStyle(fontSize: 18, color: Color(0xFF0D47A1), fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
                child: Image.network(imagenActual, fit: BoxFit.contain),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _mini(urlPrincipal), _mini(img1), _mini(img2), _mini(img3),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Descripción: Motor de alta eficiencia para perforaciones en concreto. Diseño ergonómico exclusivo Home Depot Blue.', 
              style: TextStyle(color: Colors.black54)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity, height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0D47A1)),
                  onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                  child: const Text('Agregar al Carrito', style: TextStyle(color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _mini(String url) {
    return GestureDetector(
      onTap: () => setState(() => imagenActual = url),
      child: Container(
        width: 65, height: 65,
        decoration: BoxDecoration(border: Border.all(color: imagenActual == url ? const Color(0xFF0D47A1) : Colors.grey.shade300, width: 2)),
        child: Image.network(url, fit: BoxFit.cover),
      ),
    );
  }
}