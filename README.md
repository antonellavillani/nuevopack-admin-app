# NuevoPack Admin App

Aplicación móvil desarrollada con **Flutter** para la administración interna de la imprenta **NuevoPack**. Permite al equipo gestionar servicios, usuarios, consultas y la configuración del sitio web, así como visualizar estadísticas desde cualquier dispositivo móvil Android.

## Funcionalidades principales

- Inicio de sesión seguro.
- Gestión de servicios ofrecidos por la imprenta.
- Gestión de usuarios internos.
- Visualización de consultas recibidas desde el sitio web.
- Configuración general del sitio web.
- Panel de estadísticas y reportes (dashboard).
- Configuración de la cuenta de cada usuario.
- Interfaz amigable y diseño responsive adaptado a dispositivos móviles.

## Tecnologías utilizadas

- **Flutter** (SDK de desarrollo multiplataforma)
- **Dart** (Lenguaje de programación)
- **Material Design 3**
- **OAuth** (para autenticación segura)
- **MySQL** (base de datos conectada al backend del sitio)
- **PHP / Laravel / Node.js** (según backend que se use para APIs)

## Cómo ejecutar la app localmente

1. Clonar este repositorio:
   git clone https://github.com/antonellavillani/nuevopack-admin-app.git
2. Acceder al directorio:
   cd nuevopack-admin-app
3. Instalar las dependencias:
   flutter pub get
4. Ejecutar la app:
    flutter run
*¡Asegurate de tener configurado un dispositivo Android o un emulador activo!*

## Estructura del proyecto
lib/
├── screens/            # Pantallas principales de la app
│   ├── login.dart
│   ├── inicio.dart
│   ├── gestion_servicios.dart
│   ├── gestion_usuarios.dart
│   ├── gestion_consultas.dart
│   ├── configuracion_web.dart
│   └── dashboard.dart
│   └── cuenta.dart
├── widgets/            # Componentes reutilizables
│   └── main_button.dart
├── utils/              # Archivos utilitarios (colores, helpers, etc.)
│   └── colors.dart
└── main.dart           # Punto de entrada de la aplicación

## Consultas desde el sitio web
La pantalla Gestión de Consultas se conecta al backend del sitio web para visualizar 
todos los mensajes enviados a través del formulario de contacto. Las consultas se 
almacenan en una base de datos y se sincronizan con la app mediante una API protegida.

## Autora
Lara Antonella Villani Magrini
Estudiante de Analista de Sistemas en la Escuela Da Vinci | Proyecto final de carrera
