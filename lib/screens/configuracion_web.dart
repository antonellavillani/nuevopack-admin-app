import 'package:flutter/material.dart';

class ConfiguracionWebScreen extends StatelessWidget {
  const ConfiguracionWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configuración del sitio web')),
      body: const Center(
        child: Text('¡Bienvenido a la pantalla de Configuración del sitio web!'),
      ),
    );
  }
}
