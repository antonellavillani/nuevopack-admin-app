import 'package:flutter/material.dart';

class GestionServiciosScreen extends StatelessWidget {
  const GestionServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de servicios')),
      body: const Center(
        child: Text('¡Bienvenido a la pantalla de Gestión de servicios!'),
      ),
    );
  }
}
