# Capítulo V: Solution UI/UX Design
## 5.1. Style Guidelines
### 5.1.1. General Style Guidelines
Aquí documentaremos las decisiones transversales de la identidad visual y del lenguaje de marca:

<b>Colors</b></br>
<p align="justify">
Para la elección de los colores representativos para los productos, escogimos investigar la reacción que causaría en los usuarios durante el uso de la aplicación o landing page. En este proyecto, se decidió utilizar los colores negro y rojo, con esto creamos la paleta de colores característica de LawConnect. Con estos colores esperamos transmitir un sentido de modernidad y calidez. En este caso, escogimos negro para tener una base sólida, también, transmite un aire de confianza, que es justamente lo que esperamos con hacer por la importancia de la aplicación en la vida de nuestros usuarios; así, también tiene un toque de elegancia y seriedad. Además, utilizamos rojo suave para que transmita energía, algo que llama bastante la atención de los usuarios. Por eso es que será utilizado en las llamadas de acción, botones y puntos clave de la aplicación. En sí, buscamos que haya un balance y armonía visual en el diseño de los productos y lo logramos con ambos colores.
</p>

<img alt="Paleta de color" src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/color-palette.png" />

<b>Typography</b></br>
<p align="justify">
Familia(s), jerarquía tipográfica (display, títulos, cuerpos), escala modular y line-height para lectura cómoda.Spacing & Grid: unidad base (4/8 px), columnas y gutters para desktop/tablet/móvil, y reglas de alineación. 
</p>
<img alt="Matriz tipográfica: jerarquías y escala modular" src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/typography.png"/>

### 5.1.2. Web, Mobile and IoT Style Guidelines

##### **Spacing**

El spacing a utilizar se presentará en los siguientes puntos, estos variarán dependiendo del lenguaje o sistema operativo utilizado.  
De esta manera, permitimos que la información se vea ordenada.

##### **Para Landing Page**

- **Button padding:**
  - Vertical: `12px`
  - Horizontal: `24px`

- **Input fields:**
  - Altura: `48px`
  - Espacio entre campos: `16px`

- **Margin entre secciones:** `64px`
- **Height entre textos:** `30px`

##### **Para Android**

- **Button padding:**
  - Vertical: `12dp`
  - Horizontal: `18dp`

- **Input fields:**
  - Altura: `40dp`
  - Espacio entre campos: `16dp`

- **Margin entre secciones:**
  - Principales: `32dp` a `38dp`
  - Internas: `16dp`

- **Spacing entre textos:**
  - Título y subtítulos: `16dp`
  - Párrafos: `12dp`

##### **Para iOS**

- **Button padding:** `12pt` (vertical), `20pt` (horizontal)
- **Input fields:** `56pt` (altura), `16pt` (espacio entre campos)
- **Margin entre secciones:**
  - Principales: `32pt` a `38pt`
  - Internas: `16pt`
- **Spacing entre textos:**
  - Título y subtítulo: `16pt`
  - Párrafos: `12pt`

<b>Dimensions</b></br>
<p align="justify">
Se prefirió usar un tono ligeramente formal, y amigable; pero, de igual manera, se mantiene el respeto hacia los usuarios. Con SafeCar, preferimos utilizar un lenguaje más serio debido a la importancia de los temas que se tratan.
</p>

## 5.2. Information Architecture
### 5.2.1. Organization Systems

##### **Organización Visual**

En SafeCar, se aplicó una **jerarquía visual** que permite a los usuarios —principalmente **conductores particulares** y **mecánicos de taller**— navegar de forma intuitiva y comprender la información según su nivel de prioridad.  

El diseño establece una clara distinción entre los elementos informativos y los interactivos, utilizando **tamaños y pesos tipográficos diferentes** para guiar la atención del usuario.  
Por ejemplo, los títulos de las secciones principales como *“Panel de Control”*, *“Mis Vehículos”* o *“Órdenes de Servicio”* utilizan un tamaño de letra mayor y color de alto contraste, mientras que los subtítulos o descripciones presentan un estilo más liviano para mantener jerarquía y legibilidad.  

Este principio se refuerza con un diseño de **organización secuencial**, que orienta a los conductores a seguir un flujo paso a paso —desde el registro del vehículo hasta la solicitud y confirmación del mantenimiento—, y a los mecánicos a **gestionar eficientemente sus órdenes de trabajo**, desde la verificación inicial hasta el cierre del servicio.  
Gracias a esta estructura, la plataforma asegura una **experiencia fluida y predecible** para ambos segmentos.

##### **Esquema de Categorización**

SafeCar adopta un modelo híbrido de categorización que facilita el acceso rápido a la información según el tipo de tarea o perfil de usuario:

- **Alfabético:**  
  Utilizado principalmente en los listados de servicios y piezas del vehículo (p. ej., *Aceite*, *Batería*, *Frenos*, *Motor*).  
  Esto permite a los mecánicos encontrar rápidamente los componentes específicos que deben revisar o reemplazar, y a los conductores identificar el servicio que necesitan solicitar.

- **Por tópico:**  
  Empleado para agrupar información técnica según la categoría del mantenimiento (por ejemplo: *Preventivo*, *Correctivo*, *Diagnóstico*).  
  Esta organización facilita al conductor entender la naturaleza del servicio y al mecánico ubicar los procedimientos asociados.

- **Cronológico:**  
  Aplicado en la sección *“Historial de Mantenimientos”*, donde las órdenes se presentan desde la más reciente hasta la más antigua.  
  Esto permite a los conductores visualizar la evolución del estado de su vehículo y a los mecánicos revisar intervenciones previas antes de ejecutar un nuevo servicio.

- **Por audiencia:**  
  Dado que SafeCar atiende a **dos segmentos principales**, se ha personalizado la interfaz y la disposición de la información:
  - **Conductores Particulares:** visualizan recordatorios, próximos servicios, recomendaciones y diagnósticos simplificados en un lenguaje claro y accesible.  
  - **Mecánicos de Taller:** acceden a vistas detalladas de órdenes, listas de chequeo, reportes técnicos y métricas de desempeño del vehículo.  


### 5.2.2. Labeling Systems

Para el sistema de etiquetas en SafeCar, se estableció una estrategia enfocada en **claridad, consistencia y reconocimiento inmediato**, utilizando íconos y textos breves que permiten a los **conductores particulares** y **mecánicos de taller** comprender rápidamente la función de cada elemento dentro de la interfaz.

##### **Etiquetas para la Landing Page**

En la página principal de SafeCar, se definieron etiquetas cortas y directas que reflejan las secciones clave de la navegación superior (header), alineadas a la arquitectura de información general del sitio:

- "Home"  
- "Features" *(Características)*  
- "Plans" *(Planes)*  
- "Testimonials" *(Testimonios)*  
- "Contact" *(Contáctanos)*  
- "Free Trial" *(Prueba Gratis)*  
- 🌐 Selector de idioma *(ícono de globo terráqueo para alternar entre inglés y español)*

Estas etiquetas buscan mantener una **estructura simple y accesible**, permitiendo que el visitante comprenda la oferta de la plataforma y acceda fácilmente a la aplicación web o móvil.

<img alt="Barra de navegación de la Landing Page de SafeCar" src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/labeling-system.png" />

##### **Etiquetas para la Aplicación Móvil**

En la aplicación móvil de SafeCar, tanto en Android como en iOS, se utilizan etiquetas funcionales y consistentes que acompañan las principales acciones de los usuarios.  
El objetivo es mantener una comunicación **breve, directa y contextual**, evitando redundancias y maximizando la comprensión.

- "Guardar" *(para registrar un nuevo mantenimiento o diagnóstico)*  
- "Cancelar" *(para descartar o retroceder acciones)*  
- "Agendar Servicio" *(creación de cita para mantenimiento o revisión técnica)*  
- "Mis Vehículos" *(listado de autos registrados por el conductor)*  
- "Historial" *(seguimiento de servicios anteriores)*  
- "Revisar Caso" *(consulta de diagnósticos o reparaciones en curso)*  
- "Confirmar Servicio" *(acción de aprobación del mecánico o conductor)*  
- "Reportar Fallo" *(creación de un nuevo incidente técnico)*  

Cada etiqueta fue seleccionada con base en su **frecuencia de uso y contexto funcional**, manteniendo un tono neutral y orientado a la acción, favoreciendo la **rapidez en la toma de decisiones dentro de la aplicación**.

##### **Lineamientos Generales**

- Las etiquetas no deben superar las **dos palabras**.  
- Se prioriza el **lenguaje funcional** sobre el técnico.  
- Se evita el uso de abreviaturas o jerga especializada.  
- El texto se mantiene en **Mayúscula Inicial** para una mejor legibilidad.  
- Los íconos se acompañan de texto únicamente cuando la acción no sea evidente.

Este sistema garantiza que las interfaces de SafeCar sean **claras, consistentes y accesibles** para ambos segmentos principales: **conductores** y **mecánicos**, optimizando la comunicación visual y la usabilidad general de la plataforma.

### 5.2.3. SEO Tags and Meta Tags

### **5.2.3. SEO Tags and Meta Tags**

<p>
Para los <b>SEO Tags</b> y <b>Meta Tags</b> se implementaron palabras clave que incrementan la visibilidad de <b>SafeCar</b> en los motores de búsqueda, alineadas a su propuesta de valor: conectar a conductores particulares con mecánicos de taller calificados, optimizando el mantenimiento vehicular mediante tecnología e IoT.
</p>

##### **Landing Page**

```html
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>SafeCar — Mantenimiento Automotriz Inteligente</title>
  <meta
    name="description"
    content="SafeCar conecta conductores con mecánicos de confianza para mantener su vehículo en óptimas condiciones. Agenda, monitorea y gestiona tus mantenimientos desde una sola plataforma."
  />
  <meta
    name="keywords"
    content="mantenimiento automotriz, mecánicos en línea, taller digital, IoT automotriz, diagnóstico vehicular, SafeCar, revisión técnica, plataforma de mantenimiento"
  />
  <meta name="author" content="SafeCar Team" />
  <link href="./src/styles/output.css" rel="stylesheet" />
</head>
```

<p align="justify">
Con estos Tags, la Landing Page de SafeCar mejora su posicionamiento en buscadores (SEO), permitiendo aparecer entre los primeros resultados al buscar servicios relacionados con mantenimiento vehicular, talleres automotrices o diagnósticos digitales.
</p>

### 5.2.4. Searching Systems

<p align="justify">
En esta ocasión, la landing page no contará con una barra de búsqueda, solo tendrá disponibles secciones claras, y botones "call to action" para llevarlos a la aplicación móvil. En el caso de la aplicación móvil, sería en dos perfiles de usuario:
</p>

<ul>
  <li><strong>El mecánico de taller</strong> tendrá la opción de buscar entre las órdenes de servicio asignadas, para encontrarlas con mayor facilidad. Por ejemplo, puede buscar por el nombre del cliente, número de placa del vehículo, o tipo de mantenimiento, y le aparecerán las órdenes relacionadas.</li>
  <li><strong>El conductor particular</strong> tendrá la opción de buscar entre sus vehículos registrados y su historial de mantenimientos. Por ejemplo, si recuerda una palabra clave sobre un servicio anterior o el nombre del taller, inmediatamente aparecerá la lista de resultados filtrados.</li>
</ul>

### 5.2.5. Navigation Systems
<p align="justify">
Para el sistema de navegación hemos preferido mantener una navegación jerárquica para la landing page, en donde "Prueba Gratis" e "Iniciar Sesión" son los principales "call to action"; también, escogimos distintos patrones conocidos de Mobile UI. A continuación se va a explicar cómo será el funcionamiento de cada uno en la aplicación móvil:
</p>

<ul align="justify">
  <li><strong>Content-based Navigation:</strong> Una implementación de este tipo de navegación sería que, a partir de la tarjeta del mecánico de taller, el conductor pueda tocarla y pasar al perfil del mecánico (que cuenta con su información de contacto, servicios ofrecidos y calificaciones); otra situación es cuando el mecánico desea ver más información de una orden de servicio y toca la tarjeta de la misma.</li>

  <li><strong>Morphing Controls:</strong> En este caso, lo usaremos para el botón de "agendar servicio", este pasará a ser el de "guardar servicio" y, finalmente, "confirmar mecánico" (a partir del matchmaking). El botón evoluciona según el estado del proceso de agendamiento.</li>

  <li><strong>"Sticky" Fixed Navigation:</strong> Se considera usar un menú inferior fijo que cuente con botones de "Dashboard", "Mis Vehículos", "Órdenes de Servicio" y "Historial".</li>

  <li><strong>Vertical Navigation:</strong> Usaremos este tipo de navegación para que los usuarios visualicen la lista de vehículos registrados, órdenes de servicio activas y historial de mantenimientos.</li>

  <li><strong>Popovers:</strong> Se utilizarán las ventanas emergentes en distintos casos:
    <ul>
      <li>Asegurarse de si el conductor quiere cancelar la solicitud de servicio.</li>
      <li>Si quiere marcar el servicio como completado, lo cual implicaría que el mantenimiento fue realizado exitosamente.</li>
      <li>Si está seguro de que adjuntó toda la información necesaria del vehículo para el diagnóstico.</li>
      <li>Si está seguro de aceptar o rechazar el mecánico sugerido por la aplicación mediante el sistema de matchmaking.</li>
      <li>Confirmación antes de reportar una falla o problema técnico.</li>
    </ul>
  </li>

  <li><strong>Sidebars:</strong> En este caso, usaremos el "menú hamburguesa", que anida "Mi Perfil", "Configuración", "Soporte Técnico" y "Cerrar Sesión".</li>
</ul>

## 5.3. Landing Page UI Design
### 5.3.1. Landing Page Wireframe


### 5.3.2. Landing Page Mock-up


## 5.4. Applications UX/UI Design

### 5.4.1. Applications Wireframes
- Estos wireframes presentan la estructura y el flujo de la plataforma de MetaSoft, que busca transformar datos en conocimiento estratégico a través de soluciones web e IoT. Las pantallas están diseñadas para guiar a los usuarios a través de un proceso claro y eficiente, desde el inicio de sesión hasta la gestión detallada de información, cumpliendo con la visión de la startup de generar un impacto positivo y ser un líder en soluciones digitales.

##### Login
- Este wireframe representa la pantalla de inicio de sesión, el punto de entrada a la plataforma. La interfaz es limpia y profesional, con un área destacada a la izquierda para la marca "Tracker Mobility" y su eslogan, reforzando la identidad de la empresa. A la derecha, se encuentra un formulario simple para ingresar el correo electrónico y la contraseña. Incluye opciones para recuperar la contraseña y registrarse, lo que facilita el acceso de usuarios nuevos y recurrentes. El diseño minimalista asegura una experiencia de usuario sin distracciones, enfocada en un rápido acceso.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Login.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

- El diseño está dividido: la izquierda es un espacio destacado para la marca (identidad), y la derecha contiene el formulario de login (correo y contraseña), junto con opciones para recuperar contraseña y registro.

- Es un diseño limpio y minimalista enfocado en el acceso rápido y eficiente a la plataforma.

##### Register
- La pantalla de registro para SafeCar muestra un formulario dividido en secciones para una inscripción organizada y eficiente. Los campos están agrupados lógicamente en "Información personal" y "Información del vehículo", lo que facilita que el usuario complete la información necesaria de manera secuencial. Este enfoque por bloques reduce la carga cognitiva y hace que el proceso de registro, que puede ser tedioso, se sienta más manejable y directo. El botón de "Completar Registro" al final cierra el proceso.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Register.png" alt="Imagen de la pantalla de registro de MetaSoft">
</p>

- Muestra un formulario de registro extenso que está organizado en bloques temáticos (e.g., Información Personal, Información del Vehículo) para ser secuencial y fácil de completar. Termina con el botón "Completar Registro".

##### Dashboard
- Este wireframe muestra el diseño del panel de control o dashboard. Representa el centro de comando de la plataforma, donde los usuarios pueden obtener una visión general y estratégica de sus datos. Aunque la pantalla está vacía en el wireframe, su propósito es ser un espacio dinámico que presentará resúmenes, gráficos y métricas clave. La estructura de navegación lateral (con íconos para "Reportes", "Verificadores", etc.) es constante, lo que garantiza una transición fluida entre las diferentes secciones y reafirma la coherencia de la plataforma.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Dashboard.png" alt="Imagen del panel de control o dashboard de MetaSoft">
</p>

- Se compone de una barra de navegación lateral con iconos y un gran espacio central vacío reservado para mostrar gráficos, resúmenes y métricas estratégicas. Su objetivo es dar una visión general coherente de los datos.

##### Solicitudes
- La vista de Solicitudes es una interfaz para la gestión y supervisión de peticiones. Presenta una tabla con diversas columnas que permiten a los usuarios ver y gestionar las solicitudes de manera organizada. La funcionalidad de búsqueda, los filtros por fecha y los botones para "Eliminar" y "Exportar" demuestran la capacidad de la plataforma para procesar grandes cantidades de datos de forma eficiente, cumpliendo con la misión de transformar datos en conocimiento útil.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Solicitudes.png" alt="Imagen de la pantalla de solicitudes de MetaSoft">
</p>

- El wireframe "Solicitudes - Tracker Mobility" es una interfaz de gestión de peticiones.

- Consiste en una tabla de datos con filtros, búsqueda y opción de exportar, para ver y gestionar solicitudes masivas de forma organizada y eficiente.

##### Detalle de orden
- Este wireframe de Detalle de orden muestra una vista exhaustiva de una solicitud específica. La información se presenta en bloques o tarjetas que detallan desde la información general y la dirección de entrega hasta los documentos adjuntos. El diseño permite un análisis minucioso y la capacidad de editar la información, con campos para texto, fechas y menús desplegables. Este nivel de detalle es clave para la eficiencia operativa, una de las prioridades de la misión de la startup.
  
<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Detalle%20de%20orden.png" alt="Imagen de la pantalla de detalles de la orden de MetaSoft">
</p>

- El wireframe "Detalle de orden - Tracker Mobility" ofrece una vista exhaustiva de una solicitud o pedido específico.

- La información está organizada en bloques o tarjetas lógicas, con campos para texto, fechas y menús desplegables, permitiendo un análisis minucioso y la edición de la información. Su enfoque es la eficiencia operativa.

##### Verificadores
- La sección de Verificadores muestra dos vistas complementarias: una vista de tabla y una vista detallada.

- Vista de tabla: Un listado claro de los verificadores, con capacidad de búsqueda, filtrado y acciones como añadir o eliminar. Esta vista está optimizada para la gestión masiva de personal.

- Vista detallada: Al seleccionar un verificador, se accede a su perfil, que incluye opciones para editar la información y secciones colapsables para datos adicionales. Este diseño se enfoca en la gestión individualizada del personal, lo que potencia la eficiencia de los procesos.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Verificadores.png" alt="Imagen de la pantalla de verificadores de MetaSoft">
</p>

- El wireframe "Verificadores - Tracker Mobility" presenta la Vista de Tabla, optimizada para la gestión masiva de personal. Incluye una gran tabla con capacidad de búsqueda, filtrado y acciones (añadir, eliminar) para administrar un listado claro de todos los verificadores.


<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Verificadores2.png" alt="Imagen de la segunda pantalla de verificadores de MetaSoft">
</p>

- Este wireframe muestra la Vista Detallada de un verificador específico. Al seleccionar a alguien de la lista, se accede a su perfil individual. Presenta la información en bloques editables en la parte superior y secciones colapsables con datos adicionales en la parte inferior, enfocándose en la gestión individualizada del personal.


##### Reportes
- La sección de Reportes también se presenta con dos vistas, una general y una detallada, que ilustran la capacidad de la plataforma para manejar y presentar datos complejos.

- Vista de tabla: Es un listado de reportes, similar a las vistas de solicitudes y verificadores, con filtros y botones de acción. Facilita la navegación rápida y la gestión de múltiples reportes.

- Vista detallada: Un wireframe complejo y extenso que muestra la información completa de un reporte. Con múltiples secciones para texto, tablas y espacios para imágenes, esta pantalla es el núcleo de la promesa de MetaSoft de transformar datos en conocimiento, permitiendo un análisis profundo y la toma de decisiones informada.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Reportes.png" alt="Imagen de la pantalla de reportes de MetaSoft">
</p>

- El wireframe "Reportes - Tracker Mobility" muestra la Vista de Listado principal. Es una interfaz de gestión tabular con filtros, búsqueda y botones de acción (como añadir o ver detalles), diseñada para visualizar y administrar de forma masiva y eficiente todos los reportes generados.

<p align="center">
  <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-V/assets/img/capitulo-V/Reportes2.png" alt="Imagen de la segunda pantalla de reportes de MetaSoft">
</p>

- Este wireframe de Reporte muestra una vista de detalle muy extensa y vertical. La información está segmentada en numerosos bloques y secciones que contienen texto, campos, y grandes espacios reservados para imágenes o gráficos (indicados con las "X"). Esta vista permite un análisis exhaustivo y minucioso de un reporte individual.

### 5.4.2. Applications Wireflow Diagrams

Los diagramas de Wireflow elaborados para SafeCar muestran de forma visual cómo se conectan las distintas pantallas de la aplicación, combinando el diseño de la interfaz con el recorrido de navegación del usuario. Estos flujos ilustran las principales acciones que realizan tanto los conductores como los talleres, permitiendo evaluar la usabilidad del sistema y garantizar una experiencia coherente e intuitiva en todo momento.

<div align="center" style="margin-top: 20px;"><img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20Safecar.jpg" alt="Wireframe Safecar" width="1000px">
</div>

 **Wireflow – Taller mecanico (Web)**

El diagrama de wireflow para el segmento de talleres mecánicos en SafeCar representa de manera detallada el flujo de interacción del usuario desde el proceso de inicio de sesión o registro hasta la gestión de sus operaciones dentro del sistema. Este recorrido comienza cuando el mecánico accede a la plataforma, donde puede iniciar sesión con sus credenciales o, en caso de ser un nuevo usuario, crear una cuenta específica para talleres afiliados. Una vez registrado, el sistema lo redirige automáticamente al tablero principal (dashboard).

<div align="center" style="margin-top: 20px;"><img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20taller%20mecanico%20login.jpg" alt="Wireframe taller mecanico login" width="1000px"></div>

Desde este tablero, el usuario visualiza una interfaz central que agrupa las herramientas esenciales para la gestión diaria del taller, divididas en tres módulos principales: Solicitudes, Reportes y Verificadores.



<div align="center" style="margin-top: 20px;"><img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20taller%20mecanico%20funciones.jpg" alt="Wireframe taller mecanico funciones" width="1000px"></div>

En la sección Solicitudes, el mecánico accede a una lista organizada de las citas solicitadas por los conductores, incluyendo información clave como nombre del cliente, tipo de servicio, modelo y color del vehículo, fecha y hora de la cita, además del estado actual de la solicitud. Desde esta pantalla también puede aceptar, reprogramar o rechazar citas según la disponibilidad del taller.

<div align="center" style="margin-top: 20px;"> <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20taller%20mecanico%20solicitudes.jpg"  alt="Wireframe taller mecanico solicitudes" width="1000px"> </div>

En el módulo de Reportes, el usuario puede revisar el historial de mantenimientos y diagnósticos realizados, generar nuevos reportes técnicos o actualizar los ya existentes. Este apartado está diseñado para optimizar el seguimiento de los trabajos efectuados y permitir la trazabilidad de los servicios ofrecidos, mejorando la transparencia con los clientes.

<div align="center" style="margin-top: 20px;"> <img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20taller%20mecanico%20reportes.jpg"  alt="Wireframe taller mecanico reportes" width="1000px"></div>

Por último, la sección de Verificadores integra los datos enviados por los dispositivos IoT, mostrando métricas en tiempo real sobre el estado de los vehículos. Aquí, el mecánico puede validar las lecturas del sistema, registrar observaciones o crear alertas preventivas que se enviarán directamente al conductor.

<div align="center" style="margin-top: 20px;"><img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20taller%20mecanico%20verificadores.jpg" alt="Wireframe taller mecanico verificadores" width="1000px"> 
</div>

 **Wireflow – Conductor (Web)**

El diagrama de wireflow para el segmento de conductores en SafeCar, al igual que en el caso de los talleres mecánicos, incluye el flujo completo desde el inicio de sesión o registro hasta la gestión de las principales funciones del sistema. El recorrido comienza cuando el conductor accede a la plataforma, donde puede ingresar con sus credenciales o crear una cuenta personal si es un nuevo usuario. Una vez autenticado, el sistema lo dirige automáticamente a su panel principal (dashboard), donde se centralizan las herramientas clave para la gestión de su vehículo y el seguimiento de mantenimientos.

<div align="center" style="margin-top: 20px;"><img src="https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/refs/heads/docs/chapter-V/assets/img/capitulo-V/Wireframe%20conductor.jpg" alt="Wireframe conductor" width="1000px"> 
</div>

### 5.4.3. Applications Mock-ups

#### Web Application Mock-ups
Cada uno de los siguientes prototipos resalta los aspectos esenciales de la interacción con el usuario y los componentes del diseño de la interfaz, con especial atención al diseño inclusivo y a la organización de la información. El sistema de diseño se ha implementado de forma uniforme en todas las pantallas para garantizar una experiencia de usuario coherente.


#### Pantalla de Login

<p align="center">
  <img src="../assets/img/capitulo-V/mock-1-login.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

Interfaz de acceso al sistema SafeCar, dividida en dos secciones:  
- Panel izquierdo: muestra un mensaje motivacional e imagen alusiva al entorno automotriz, reforzando la identidad del sistema.  
- Panel derecho: contiene el formulario de inicio de sesión con campos claros y botones destacados para Login y Sign up.  

El diseño utiliza una paleta azul y blanca, enfocada en la claridad, accesibilidad y profesionalismo, ofreciendo una experiencia de usuario limpia y moderna.


#### Pantalla de Registro de Taller

<p align="center">
  <img src="../assets/img/capitulo-V/mock-2-register.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

Formulario de registro para crear una cuenta de taller en SafeCar.  
Incluye secciones diferenciadas para información comercial y de seguridad, con campos claros para datos como nombre del taller, RUC, dirección, correo y teléfono.  

El diseño mantiene una estructura limpia y ordenada, utilizando tonos azules y grises suaves para guiar la vista y destacar el botón principal de acción "Create Workshop Account".


#### Pantalla de Gestión de Solicitudes de Servicio

<p align="center">
  <img src="../assets/img/capitulo-V/mock-3-service.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

Interfaz que permite administrar citas y solicitudes de servicio automotriz de los clientes.  
Presenta una tabla con información clave como nombre, teléfono, placa, marca, tipo de servicio y estado.  

Incluye funciones de búsqueda, filtrado, eliminación y exportación de datos, además de un menú lateral con accesos rápidos.  
El diseño prioriza la organización y legibilidad mediante el uso de tonos azules, botones contrastantes y jerarquía visual clara.


#### Pantalla de Historial de Servicios

<p align="center">
  <img src="../assets/img/capitulo-V/mock-4-history.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

Muestra el registro completo de mantenimientos y reparaciones realizados a los vehículos.  
Incluye una tabla con datos como placa, modelo, propietario, tipo de servicio, fecha, kilometraje y taller.  

Cuenta con funciones de búsqueda, filtrado y exportación, permitiendo una gestión eficiente del historial.  
El diseño mantiene coherencia visual con el resto del sistema mediante el uso de tonos azules, íconos y botones consistentes.


#### Pantalla de Detalle de Cita

<p align="center">
  <img src="../assets/img/capitulo-V/mock-5-appointment.png" alt="Imagen de la pantalla de inicio de sesión de MetaSoft">
</p>

Permite visualizar y gestionar la información completa de una solicitud de servicio.  
Muestra datos del cliente, vehículo y servicio solicitado, junto con el estado de la cita y el mecánico asignado.  

Incluye campos para observaciones y opciones para cambiar el técnico responsable.  
El diseño utiliza tarjetas organizadas y colores contrastantes para resaltar secciones clave, manteniendo la coherencia visual del sistema SafeCar.




### 5.4.4. Applications User Flow Diagrams
  
## **5.5. Applications Prototyping**











