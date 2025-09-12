# 🏗️ Estructura de tu Repositorio `flutter_basics`

## 📂 Estructura Propuesta

* **main** → Solo contiene un `README.md` explicando que cada rama es un mini-proyecto y cómo acceder a ellas.
* **flutter-project-structure-and-setup** → Proyecto 1 (estructura y configuración).
* **building-ui-with-widgets** → Proyecto 2 (UI con widgets).
* **stateful-widgets-and-local-state-management** → Proyecto 3 (widgets con estado y gestión local).
* **navigation-and-routing** → Proyecto 4 (navegación y rutas).
* **api-data-feching-and-dynamic-lists** → Proyecto 5 (API y listas dinámicas).
* **capstone** → Proyecto final integrador.

---

## 🧾 Contenido del README en `main`

# Flutter Basics 🏗️

Este repositorio contiene mis proyectos de práctica para aprender Flutter.  
Cada tema está organizado en **ramas (branches)** independientes.  

## 📚 Lista de Proyectos

| Branch | Descripción |
|-------|-------------|
| `flutter-project-structure-and-setup` | Instalación, configuración y exploración de un proyecto Flutter. |
| `building-ui-with-widgets` | Creación de interfaces usando widgets básicos. |
| `stateful-widgets-and-local-state-management` | Uso de widgets con estado y manejo de estado local. |
| `navigation-and-routing` | Implementación de navegación y rutas entre pantallas. |
| `api-data-feching-and-dynamic-lists` | Consumo de APIs y renderizado de listas dinámicas. |
| `capstone` | Proyecto final integrando todo lo aprendido. |

## 🚀 Cómo ver un proyecto

1. Clona el repositorio si no lo has hecho:  
   ```bash
   git clone https://github.com/tu-usuario/flutter_basics.git
   cd flutter_basics
   ```

2. Cambia a la rama que te interesa:

   ```bash
   git checkout nombre-de-la-rama
   ```

3. Abre el proyecto en tu IDE y ejecútalo:

   ```bash
   flutter run
   ```

---

💡 **Tip:** Cada rama es independiente, así que puedes estudiar y modificar cada tema sin afectar los demás.

---

## 🛠️ Flujo para Crear y Subir Tus Ramas

1. Crea el repositorio en GitHub vacío llamado `flutter_basics`.  
2. Clona el repositorio en tu PC.  
3. Crea tu rama inicial para el primer proyecto:  
   ```bash
   git checkout -b flutter-project-structure-and-setup
   ```

4. Crea el proyecto con `flutter create`, trabaja en él y haz tus commits.
5. Sube la rama:

   ```bash
   git push -u origin flutter-project-structure-and-setup
   ```
6. Repite los pasos para cada nuevo proyecto, creando nuevas ramas.
7. Mantén `main` limpio, solo con el README que explica el repositorio.
