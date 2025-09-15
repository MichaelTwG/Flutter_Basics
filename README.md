# Building UI with Widgets  

## 📖 Introducción y Contexto  
En este proyecto aprenderás a construir interfaces de usuario estructuradas y con estilo visual utilizando el sistema de **widgets** de Flutter.  
Las apps en Flutter están compuestas por widgets, que definen desde el layout hasta el estilo.  
Comenzarás creando layouts usando widgets estructurales básicos, y luego los mejorarás con estilos, espaciado e imágenes.  
También aprenderás a encapsular partes de tu UI en **widgets personalizados reutilizables** — un principio clave para el desarrollo escalable de aplicaciones.  

Este proyecto se enfoca en la composición de **stateless widgets** y fundamentos de UI, preparándote para trabajar más adelante con interactividad y estado.  

---

## 🎯 Objetivos de Aprendizaje  
Al finalizar este proyecto serás capaz de:  

- Construir interfaces de usuario usando **stateless widgets**.  
- Componer layouts complejos usando widgets estructurales y visuales.  
- Aplicar estilos, padding y decoración a componentes de UI.  
- Crear elementos de UI reutilizables con widgets personalizados.  

---

## 📝 Tareas  

### 0️⃣ Build a Simple Profile Card Layout  
**mandatory**  
**Objetivo:** Usar widgets de layout y visuales para construir una estructura de UI limpia.  

**Instrucciones:**  
En tu proyecto Flutter, reemplaza el widget `MyHomePage` con un nuevo layout que muestre:  
- Una imagen de perfil circular.  
- Un nombre en texto en **negrita**.  
- Una breve descripción debajo.  

Usa los siguientes widgets:  
- `Column`, `Row`, `Padding`, `Container`, `Text`, `Image`, `CircleAvatar`.  

**Resultado esperado:**  
Un layout centrado verticalmente con apariencia de tarjeta, que contenga imagen de perfil, nombre y descripción apilados en una columna.  

---

### 1️⃣ Apply Styling and Layout Customization  
**mandatory**  
**Objetivo:** Mejorar la UI con estilos, padding y decoración de fondo.  

**Instrucciones:**  
- Agrega padding alrededor de tu layout usando `Padding` y `EdgeInsets`.  
- Aplica estilo al texto del nombre con `TextStyle`:  
  - `fontSize` 20+  
  - `fontWeight` bold  
- Envuelve el contenedor principal en un `Container` y aplica:  
  - Esquinas redondeadas usando `BoxDecoration`  
  - Color de fondo  
  - Sombra (opcional)  

**Resultado esperado:**  
El layout tiene espaciado consistente, un fondo estilizado tipo tarjeta y apariencia moderna.  

---

### 2️⃣ Refactor into a Custom Widget  
**mandatory**  
**Objetivo:** Encapsular parte de la UI en un widget reutilizable.  

**Instrucciones:**  
- Mueve el layout de la tarjeta de perfil a su propia clase `StatelessWidget` llamada `ProfileCard`.  
- Reemplaza el layout en `MyHomePage` con una llamada a `ProfileCard()`.  
- Agrega parámetros de constructor a `ProfileCard` para:  
  - `String name`  
  - `String description`  
  - `String imageUrl`  
- Usa estos parámetros para poblar la UI.  

**Resultado esperado:**  
Un widget `ProfileCard` reutilizable que recibe datos personalizados y renderiza el mismo layout.  

---

### 3️⃣ Display a List of ProfileCards  
**mandatory**  
**Objetivo:** Practicar composición de widgets reutilizando un widget en una lista.  

**Instrucciones:**  
- Reemplaza el body de `MyHomePage` con un `ListView`.  
- Crea una lista de 3–5 widgets `ProfileCard`, cada uno con datos diferentes.  
- Asegúrate de que el layout se pueda desplazar correctamente.  

**Resultado esperado:**  
Una lista vertical desplazable de widgets `ProfileCard`, cada uno con contenido único.