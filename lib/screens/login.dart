import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Colores
    const Color rosaClaro = Color(0xFFFF75DD);
    const Color rosaOscuro = Color(0xFFB24096);
    const Color amarillo = Color(0xFFFFE669);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              // Logo de NuevoPack
              Image.asset(
                'assets/images/logo_nuevopack.png',
                height: 100,
              ),
              const SizedBox(height: 20),

              // Título superior
              Text(
                '¡Bienvenido/a!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: rosaOscuro,
                ),
              ),
              const SizedBox(height: 10),

              // Título de login
              Text(
                'Iniciá sesión',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: rosaOscuro,
                ),
              ),
              const SizedBox(height: 40),

              // Contenedor de inputs y botón
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: rosaClaro.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    // Input de correo
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo electrónico',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Input de contraseña
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Botón de iniciar sesión
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/inicio');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: rosaOscuro,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Iniciar sesión',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),

              // Versión del proyecto
              const Text(
                'Versión 1.0.0',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
