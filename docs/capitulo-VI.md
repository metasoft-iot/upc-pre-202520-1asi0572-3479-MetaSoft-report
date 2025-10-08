# Capítulo VI: Product Implementation, Validation & Deployment
## 6.1. Software Configuration Management
### 6.1.1. Software Development Environment Configuration
### 6.1.2. Source Code Management
### 6.1.3. Source Code Style Guide & Conventions
### 6.1.4. Software Deployment Configuration
## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1
#### 6.2.1.1. Sprint Planning 1

<p align="justify">
El Sprint 1 marca el inicio del proceso de desarrollo del proyecto, estableciendo las bases fundamentales y los flujos de trabajo del equipo. Durante este primer ciclo se valida la arquitectura propuesta y se implementan las funcionalidades core que servirán como cimiento para las iteraciones posteriores del desarrollo.
</p>

<table width="100%">
    <tr>
        <th>Sprint #</th>
        <th>Sprint 1</th>
    </tr>
    <tr>
        <td colspan="2">Sprint Planning Background</td>
        <td></td>
    </tr>
    <tr>
        <td>Date</td>
        <td>2025-09-16</td>
    </tr>
    <tr>
        <td>Time</td>
        <td>08:38 AM</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>
        La reunión fue llevada a cabo de manera virtual mediante la plataforma de Google Meet
        </td>
    </tr>
    <tr>
        <td>Prepared By</td>
        <td>
        Zavala Quedena, Gonzalo Andre
        </td>
    </tr>
    <tr>
     <td>Sprint n - 1 Review Summary</td>
        <td>
        Este es el primer Sprint del proyecto, por lo que no existe un Sprint anterior para revisar. El equipo se encuentra en la fase inicial de desarrollo, estableciendo las bases del producto y definiendo los procesos de trabajo colaborativo.
        </td>
    </tr>
    <tr>
        <td colspan="2">Sprint Goal & User Stories</td>
        <td></td>
    </tr>
    <tr>
        <td>Sprint 1 Goal</td>
        <td>
        Nuestro enfoque está en ofrecer una primera versión completamente funcional del entorno visual e interactivo de SafeCar, que incluye la landing page y los principales módulos de la aplicación web: historial de servicio, solicitud de servicio mecánico, e interfaces de inicio de sesión y registro. 
        <br><br>
        Creemos que esto permite validar la experiencia integral del usuario (conductores y mecánicos de taller) y la coherencia de los flujos principales del sistema, incluso utilizando datos simulados mientras se desarrolla la integración con el backend.
        <br><br>
        Esto se confirmará cuando los usuarios puedan navegar por la landing page, registrarse o iniciar sesión, y gestionar solicitudes e historiales de servicio con una interacción fluida y coherente en el entorno de pruebas.
        </td>
    </tr>
    <tr>
       <td>Sprint 1 Velocity</td>
        <td>
        Se establece una velocidad inicial de 23 Story Points, correspondiente a la capacidad total comprometida por el equipo durante la planificación del Sprint 1. Esta métrica servirá como referencia base para medir el rendimiento y ajustar la capacidad del equipo en los siguientes Sprints.
        </td>
    </tr>
    <tr>
        <td>Sum of Story Points</td>
        <td>23</td>
    </tr>
</table>

#### 6.2.1.2. Aspect Leaders and Collaborators

#### 6.2.1.3. Sprint Backlog 1

<p align="justify">

</p>

<table width="100%">
    <tr>
        <th colspan="2">Sprint #</th>
        <th colspan="6">Sprint 1</th>
    </tr>
    <tr>
        <td colspan="2">User Story</td>
        <td colspan="6">Work-Item / Task</td>
    </tr>
    <tr>
        <td>Id</td>
        <td>Title</td>
        <td>Id</td>
        <td>Title</td>
        <td>Description</td>
        <td>Estimation (Hours)</td>
        <td>Assigned To</td>
        <td>Status (To-do / In-Process / To-Review / Done)</td>
    </tr>
    <tr>
        <td rowspan="6">US101</td>
        <td rowspan="6">Como visitante deseo desplazarme entre las secciones de la landing page para encontrar la información sobre de SafeCar de forma rápida</td>
        <td>T1</td>
        <td rowspan="6">Navegación mediante el navbar de la Landing Page</td>
        <td>
            Implementar navbar opciones de redirección a las secciones (home, features, plans, testimonials y contact) de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T2</td>
        <td>
            Redirección a sección "Features" desde el navbar de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T3</td>
        <td>
           Redirección a sección "Hero" al hacer click en opción "home" desde el navbar de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T4</td>
        <td>
            Redirección a sección "Testimonials" al hacer click en la opción "testimonials"  desde el navbar de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T5</td>
        <td>
            Redirección a sección "Contact" al hacer click en la opción "contact" desde el navbar de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T6</td>
        <td>
            Redirección a sección "Plans" al hacer click en la opción "plans" desde el navbar de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="2">US102</td>
        <td rowspan="2">Como visitante deseo un acceso visible hacia la aplicación para continuar con el uso del servicio cuando lo decida</td>
        <td>T7</td>
        <td rowspan="2">Implementación del botón call-to-action de la Landing Page</td>
        <td>
            Implementar UI del botón call-to-action en sección Hero de Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T8</td>
        <td>
            Implementación de la redirección del botón call-to-action en la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="5">US103</td>
        <td rowspan="5">Como visitante deseo cambiar el idioma de la página para leer la información en el idioma que prefiera</td>
        <td>T9</td>
        <td rowspan="5">Soporte de internacionalización de la Landing Page</td>
        <td>
            Configurar archivo de internacionalización (i18n) para la Landing Page con texto en idioma Español
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T10</td>
        <td>
            Configurar archivo de internacionalización (i18n) para la Landing Page con texto en idioma Inglés
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T11</td>
        <td>
            Guardar la preferencia de idioma (en localStorage o cookies) para mantener persistencia en la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T12</td>
        <td>
            Implementar selector de idioma para posterior (i18n)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T13</td>
        <td>
           Implementación de internacionalización (i18n)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="7">US104</td>
        <td rowspan="7">Como visitante deseo ver claramente los planes y precios de SafeCar para evaluar cuál se ajusta mejor a mis necesidades</td>
        <td>T14</td>
        <td rowspan="7">Accesibilidad a Planes de la Landing Page</td>
        <td>
            Implementar UI de sección de Planes con plan Estandar en Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T15</td>
        <td>
           Implementar UI de sección de Planes con plan Premium en Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T16</td>
        <td>
          Implementar UI de sección de Planes con plan Básico en Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T17</td>
        <td>
           Implementar accesibilidad de secciones de la Landing Page mediante etiquetas alternativas.
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T18</td>
        <td>
           Implementar accesibilidad de secciones de la Landing Page mediante lectura por lectores de pantalla
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T19</td>
        <td>
            Redireccionar al proceso de compra luego de click en "Select" de algún plan mostrado en sección "Plans" del la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T20</td>
        <td>
            Botones por plan "Select"en la UI de la Landing page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="2">US109</td>
        <td rowspan="2">Como visitante deseo acceder a las redes sociales oficiales desde el pie de página para seguir las novedades de SafeCar</td>
        <td>T21</td>
        <td rowspan="2">Accesibilidad redes sociales de SafeCar desde Landing Page</td>
        <td>
            Implementar redirección a las redes oficiales de SafeCar (Facebook, Instagram,  X)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T22</td>
        <td>
            Implementar redirección de redes sociales en una nueva pestaña
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="2">US110</td>
        <td rowspan="2">Como visitante deseo que la página se vea bien en cualquier dispositivo para acceder cómodamente desde cualquier lugar</td>
        <td>T23</td>
        <td rowspan="2">Responsividad de la Landing Page</td>
        <td>
            Implementación responsive de la Landing Page
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T24</td>
        <td>
            Implementación responsive de la aplicación web
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="6">US201</td>
        <td rowspan="6">Como usuario registrado deseo iniciar sesión con mis credenciales para acceder a mis datos y funcionalidades</td>
        <td>T25</td>
        <td rowspan="6">Inicio de sesión de usuario en la Aplicación Web</td>
        <td>
           UI para el SignIn del usuario con los campos (email + password)
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T26</td>
        <td>
           Mostrar mensaje de éxito (Datos correctamente ingresados) en UI de SignIn de la Aplicación Web
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T27</td>
        <td>
           Redireccionar UI "Home" de la Aplicación Web luego del SignIn del usuario
        </td>
        <td>1</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T28</td>
        <td>
           Mostrar mensaje de error (Contraseña inválida del usuario existente) en UI de SignIn de la Aplicación Web
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T29</td>
        <td>
           Servidor valida credenciales de email y contraseña para SignIn
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T30</td>
        <td>
           Mostrar mensaje de error (Usuario no registrado con ese correo) en UI de SignIn
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="9">US202</td>
        <td rowspan="9">Como nuevo usuario deseo registrarme con mis datos básicos para crear una cuenta en SafeCar y comenzar a usar el sistema</td>
        <td>T31</td>
        <td rowspan="9">Registro de usuario en la Aplicación Web</td>
        <td>
           UI para el SignUp de usuario  (Nombres, Apellidos, Correo, Teléfono, Contraseña)
        </td>
        <td>3</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T31</td>
        <td>
           Mostrar mensajes de error de validación de los campos nombre, apellidos, teléfono
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T32</td>
        <td>
           Mostrar mensajes de error (email existente / formato inválido) en UI para SignUp
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T33</td>
        <td>
           Mostrar mensajes de error (Requerimientos de contraseña inválida) en UI de SignUp
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T34</td>
        <td>
           Servidor valida campo nombre y apellido que solo sean caracteres y máximo 50 caracteres cada uno
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T35</td>
        <td>
           Mostrar mensaje de éxito al registrarse (Se registró correctamente) y redirección a SignIn
        </td>
        <td>2</td>
        <td>Janover Saldaño</td>
        <td>Done</td>
    </tr>
     <tr>
        <td>T36</td>
        <td>
           Servidor valida contraseña de usuario segura (+8 caracteres, >= 1 simbolo)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T37</td>
        <td>
           Servidor verifica unicidad de email al momento de realizar SignUp
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T38</td>
        <td>
           Servidor valida teléfono de usuario (solo dígitos, máx. 9)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
</table>

#### 6.2.1.4. Development Evidence for Sprint Review
#### 6.2.1.5. Testing Suite Evidence for Sprint Review
#### 6.2.1.6. Execution Evidence for Sprint Review
#### 6.2.1.7. Services Documentation Evidence for Sprint Review
#### 6.2.1.8. Software Deployment Evidence for Sprint Review
#### 6.2.1.9. Team Collaboration Insights during Sprint