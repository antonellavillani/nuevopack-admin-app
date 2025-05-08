import 'package:flutter/material.dart';
import 'cuenta.dart';
import 'gestion_servicios.dart';
import 'gestion_usuarios.dart';
import 'gestion_consultas.dart';
import 'configuracion_web.dart';
import 'dashboard.dart';
import '../widgets/main_button.dart';
import '../utils/colors.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Fila superior con logo y botón "Mi cuenta"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo
                  Image.asset(
                    'assets/images/logo_nuevopack.png',
                    height: 40,
                  ),

                  // Botón "Mi cuenta"
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CuentaScreen()),
                      );
                    },
                    child: const Text(
                      'Mi cuenta',
                      style: TextStyle(
                        color: AppColors.rosaOscuro,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Título principal
              const Text(
                'Inicio',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.rosaOscuro,
                ),
              ),

              const SizedBox(height: 20),

              // Subtítulo para las gestiones
              const Text(
                'Panel de gestión',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 20),

              // Botones de gestión
              const MainButton(label: 'Gestión de servicios', screen: GestionServiciosScreen()),
              const SizedBox(height: 12),
              const MainButton(label: 'Gestión de usuarios', screen: GestionUsuariosScreen()),
              const SizedBox(height: 12),
              const MainButton(label: 'Gestión de consultas', screen: GestionConsultasScreen()),
              const SizedBox(height: 12),
              const MainButton(label: 'Configuración del sitio web', screen: ConfiguracionWebScreen()),

              const SizedBox(height: 40),

              // Subtítulo de estadísticas
              const Text(
                'Estadísticas del sitio web',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 20),

              // Botón de reportes
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashboardScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.rosaClaro,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Reportes',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
