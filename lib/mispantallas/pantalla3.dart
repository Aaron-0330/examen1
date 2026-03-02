import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        title: const Text('Finalizar Pago', style: TextStyle(color: Colors.black)),
        actions: const [
          Icon(Icons.security, color: Colors.green),
          SizedBox(width: 15),
          Icon(Icons.help_center_outlined, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Pago', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              const TextField(decoration: InputDecoration(labelText: 'Tarjeta de Crédito', prefixIcon: Icon(Icons.credit_card), border: OutlineInputBorder())),
              const SizedBox(height: 20),
              const Text('Dirección de envío', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('Agregar dirección de envío', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(child: TextField(decoration: InputDecoration(hintText: 'Código promo', border: OutlineInputBorder()))),
                  const SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Colors.black), child: const Text('Aplicar', style: TextStyle(color: Colors.white))),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Pago total'), Text('\$3,570.00', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity, height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0D47A1)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('¡Compra realizada con éxito!')));
                  },
                  child: const Text('Pagar Ahora', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}