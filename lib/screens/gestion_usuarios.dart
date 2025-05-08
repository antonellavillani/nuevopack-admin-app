import 'package:flutter/material.dart';

class GestionUsuariosScreen extends StatelessWidget {
  const GestionUsuariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gestión de usuarios')),
      body: const Center(
        child: Text('¡Bienvenido a la pantalla de Gestión de usuarios!'),
      ),
    );
  }
}
