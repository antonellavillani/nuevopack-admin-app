import 'package:flutter/material.dart';

class GestionConsultasScreen extends StatelessWidget {
  const GestionConsultasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de consultas')),
      body: const Center(
        child: Text('¡Bienvenido a la pantalla de Gestión de consultas!'),
      ),
    );
  }
}
