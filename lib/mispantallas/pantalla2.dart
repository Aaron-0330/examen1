import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const Icon(Icons.menu, color: Color(0xFF0D47A1)),
        title: const Text('Mi Carrito', style: TextStyle(color: Color(0xFF0D47A1))),
        actions: const [
          Icon(Icons.search, color: Color(0xFF0D47A1)),
          SizedBox(width: 15),
          Icon(Icons.delete_outline, color: Color(0xFF0D47A1)),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mi Carrito',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
            
            // Lista de productos (Usamos Expanded para que ocupe el espacio disponible)
            Expanded(
              child: ListView(
                children: [
                  // PRODUCTO 1
                  _itemCarrito(
                    'Rotomartillo SDS',
                    '3,450.00',
                    'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/rotomartillo.jpg',
                  ),
                  const SizedBox(height: 15),
                  
                  // PRODUCTO 2 (Imagen adicional 1)
                  _itemCarrito(
                    'Juego de Brocas Pro',
                    '450.00',
                    'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/brocas.jpg',
                  ),
                  const SizedBox(height: 15),
                  
                  // PRODUCTO 3 (Imagen adicional 2)
                  _itemCarrito(
                    'Caja de Herramientas',
                    '890.00',
                    'https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/cajaherramientas.jpg',
                  ),
                ],
              ),
            ),

            // Sección de Totales
            const Divider(thickness: 1),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Subtotal'), Text('\$4,790.00')],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Envío'), Text('\$120.00')],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('\$4,910.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xFF0D47A1))),
              ],
            ),
            const SizedBox(height: 20),
            
            // Botón de finalizar
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF0D47A1), width: 2)),
                onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
                child: const Text('Finalizar Compra',
                    style: TextStyle(
                        color: Color(0xFF0D47A1), fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget personalizado para no repetir código por cada producto
  Widget _itemCarrito(String nombre, String precio, String urlImagen) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              urlImagen,
              fit: BoxFit.cover,
              errorBuilder: (c, e, s) => const Icon(Icons.image, color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nombre,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text('\$$precio', style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        // Selector de cantidad (+ 1 -) como en el diseño
        Row(
          children: [
            const Icon(Icons.remove_circle_outline, size: 20, color: Colors.grey),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const Icon(Icons.add_circle_outline, size: 20, color: Color(0xFF0D47A1)),
          ],
        ),
      ],
    );
  }
}