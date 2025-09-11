# Flutter Project Structure and Setup

## Introduction and Context
En este proyecto configurarás tu entorno de desarrollo Flutter, crearás tu primera aplicación Flutter y explorarás la estructura de carpetas del proyecto. Obtendrás una comprensión clara de cómo inicia una app Flutter y cómo se organizan sus archivos — una base crucial para construir aplicaciones robustas.  
También aprenderás a usar la **Flutter CLI** para tareas esenciales como ejecutar, depurar y gestionar dependencias.

Este proyecto te prepara para un desarrollo de UI más avanzado asegurando que estés completamente cómodo navegando y gestionando un proyecto Flutter.

## Learning Objectives
Al finalizar este proyecto, serás capaz de:

- Configurar un entorno de desarrollo Flutter funcional.  
- Crear y ejecutar un proyecto Flutter en un emulador o dispositivo.  
- Identificar y explicar el propósito de los archivos y carpetas clave en un proyecto Flutter.  
- Usar de forma efectiva las herramientas de línea de comandos de Flutter.  
- Agregar dependencias a través de `pubspec.yaml` y entender cómo se gestionan los paquetes.  

---

## Tasks

### 0. Install Flutter and Set Up Environment  
**mandatory**  
**Objetivo:** Instalar el SDK de Flutter y configurar tu entorno de desarrollo.  

**Instrucciones:**
- Sigue la guía oficial de instalación para tu sistema operativo.  
- Configura Android Studio, VS Code, o tu IDE preferido con los plugins de Flutter y Dart.  
- Ejecuta `flutter doctor` en tu terminal y resuelve todos los problemas reportados.  

**Resultado esperado:** `flutter doctor` no muestra errores ni problemas pendientes.  

**Command Line Tool:** `flutter doctor`  

---

### 1. Create a New Flutter Project  
**mandatory**  
**Objetivo:** Generar una nueva app Flutter usando la CLI y abrirla en tu IDE.  

**Instrucciones:**
- Ejecuta `flutter create hello_flutter` en tu terminal.  
- Abre la carpeta del proyecto en tu IDE.  
- Ejecuta el proyecto en un emulador o dispositivo físico.  

**Resultado esperado:** La app contador por defecto de Flutter se ejecuta correctamente en un emulador/dispositivo.  

**Command Line Tool:** `flutter create`, `flutter run`  

---

### 2. Explore the Project Structure  
**mandatory**  
**Objetivo:** Comprender el propósito de cada carpeta y archivo clave en un nuevo proyecto Flutter.  

**Instrucciones:**
En el proyecto `hello_flutter`, revisa los siguientes elementos:  
- `lib/`  
- `lib/main.dart`  
- `pubspec.yaml`  
- `android/` y `ios/`  
- `.dart_tool/`, `.idea/` y `build/`  

Escribe una breve explicación (3–5 oraciones) sobre el propósito de cada uno:  
- ¿Qué es `main.dart` y cómo inicia la app?  
- ¿Qué rol cumple `pubspec.yaml`?  
- ¿Cuál es la diferencia entre `lib/` y `android/`?  

**Resultado esperado:** Un documento escrito o bloque de comentarios en `main.dart` con explicaciones claras de cada parte.  

---

### Responses

- The `lib/` folder is the **most important** folder in the project. It contains all of the Dart code, which defines the **user interface (UI)** and **business logic** of the application.  

- The `main.dart` file is the entry point of the Flutter application. When you run the app with `flutter run`, the `main()` function inside this file is the first thing that gets executed.  

- The `pubspec.yaml` file is the heart of the project configuration. It defines critical metadata, dependencies, and also manages **assets** (images, fonts, etc.) used by the project.  

- The `.dart_tool/` folder contains files generated automatically by Dart/Flutter to manage dependencies and internal configurations.  

- The `.idea/` folder saves specific configurations of IDEs like IntelliJ and Android Studio (it doesn't affect the code).  

- The `build/` folder contains the compiled files of the app and should not be modified manually. It is generally included in the `.gitignore` file.  

- The `android/` and `ios/` folders contain the native "runner" projects for Android and iOS, respectively. When you build the app, Flutter compiles your Dart code and bundles it into a standard native application for each platform.  

---

#### Additional Data

- You can use **Java** or **Kotlin** to create specific code for the **Android** version.  
- You can create native code for **iOS** in **Swift** or **Objective-C**.  
- If you don’t have folders like `android`, `ios`, `windows`, `linux`, `macos` or `web`, it means that you didn’t add those platforms. You can add them using a command line like:  
  ```bash
  flutter create --platforms=windows .
````

And you can add more platforms to that argument separated by commas, for example:

```bash
flutter create --platforms=windows,linux,macos .
```

---

### 3. Add a Dependency to pubspec.yaml  
**mandatory**  
**Objetivo:** Aprender a usar paquetes de terceros en una app Flutter.  

**Instrucciones:**
- Abre `pubspec.yaml`.  
- Agrega la siguiente dependencia:  
  ```yaml
  cupertino_icons: ^1.0.6
  ```