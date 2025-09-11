# Flutter Project Structure and Setup

## Introducción y Contexto
En este proyecto configurarás tu entorno de desarrollo Flutter, crearás tu primera aplicación Flutter y explorarás la estructura de carpetas del proyecto. Obtendrás una comprensión clara de cómo inicia una app Flutter y cómo se organizan sus archivos — una base crucial para construir aplicaciones robustas.  
También aprenderás a usar la **Flutter CLI** para tareas esenciales como ejecutar, depurar y gestionar dependencias.

Este proyecto te prepara para un desarrollo de UI más avanzado asegurando que estés completamente cómodo navegando y gestionando un proyecto Flutter.

## Objetivos de Aprendizaje
Al finalizar este proyecto, serás capaz de:

- Configurar un entorno de desarrollo Flutter funcional.  
- Crear y ejecutar un proyecto Flutter en un emulador o dispositivo.  
- Identificar y explicar el propósito de los archivos y carpetas clave en un proyecto Flutter.  
- Usar de forma efectiva las herramientas de línea de comandos de Flutter.  
- Agregar dependencias a través de `pubspec.yaml` y entender cómo se gestionan los paquetes.  

---

## Tareas

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

### Respuestas

- La carpeta `lib/` es la **más importante** del proyecto. Contiene todo el código Dart, que define la **interfaz de usuario (UI)** y la **lógica de negocio** de la aplicación.  

- El archivo `main.dart` es el punto de entrada de la aplicación Flutter. Cuando ejecutas la app con `flutter run`, la función `main()` dentro de este archivo es lo primero que se ejecuta.  

- El archivo `pubspec.yaml` es el corazón de la configuración del proyecto. Define metadatos críticos, dependencias y también administra **assets** (imágenes, fuentes, etc.) usados por el proyecto.  

- La carpeta `.dart_tool/` contiene archivos generados automáticamente por Dart/Flutter para gestionar dependencias y configuraciones internas.  

- La carpeta `.idea/` guarda configuraciones específicas de IDEs como IntelliJ y Android Studio (no afecta el código).  

- La carpeta `build/` contiene los archivos compilados de la aplicación y no debe modificarse manualmente. Generalmente está incluida en el archivo `.gitignore`.  

- Las carpetas `android/` y `ios/` contienen los proyectos nativos "runner" para Android y iOS, respectivamente. Cuando construyes la app, Flutter compila tu código Dart y lo empaqueta en una aplicación nativa estándar para cada plataforma.  

---

#### Información Adicional

- Puedes usar **Java** o **Kotlin** para crear código específico para la versión **Android**.  
- Puedes crear código nativo para **iOS** en **Swift** o **Objective-C**.  
- Si no tienes carpetas como `android`, `ios`, `windows`, `linux`, `macos` o `web`, significa que no agregaste esas plataformas. Puedes añadirlas usando un comando como:  
  ```bash
  flutter create --platforms=windows .
  ```

Y puedes agregar más plataformas separadas por comas, por ejemplo:

```bash
flutter create --platforms=windows,linux,macos .
```

---

### 3. Add a Dependency to pubspec.yaml

**mandatory**
**Objetivo:** Aprender a usar paquetes de terceros en una app Flutter.

**Instrucciones:**

* Abre `pubspec.yaml`.
* Agrega la siguiente dependencia:

  ```yaml
  cupertino_icons: ^1.0.6
  ```
* Ejecuta en la terminal:

  ```bash
  flutter pub get
  ```
* Usa un icono de ese paquete, por ejemplo: `CupertinoIcons.heart` dentro del archivo `main.dart` para confirmar que está funcionando.

**Resultado esperado:**

* `flutter pub get` se ejecuta sin errores.
* Tu app contiene un widget que usa `CupertinoIcons.heart`, por ejemplo:

  ```dart
  Icon(CupertinoIcons.heart)
  ```

---

### 4. Modify and Rebuild the App

**mandatory**
**Objetivo:** Hacer un cambio simple en la UI para verificar el flujo de desarrollo y el comportamiento de reconstrucción.

**Instrucciones:**

* Abre `main.dart`.
* Cambia el título del widget `MyApp` y actualiza el texto en la pantalla del contador para que diga:

  > “You have pressed the button this many times:”
* Usa **hot reload** o **hot restart** para ver los cambios.

**Resultado esperado:** La app refleja el nuevo texto y título en la pantalla.
