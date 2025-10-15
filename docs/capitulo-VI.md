# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

<p align="justify">
En esta sección el equipo MetaSoft establece las decisiones y convenciones fundamentales que permitirán mantener la consistencia durante todo el ciclo de vida del proyecto SafeCar. Se definen los estándares para la gestión del código fuente, configuración del entorno de desarrollo y despliegue de la solución, asegurando que todos los miembros del equipo trabajen bajo las mismas especificaciones y buenas prácticas de la industria.
</p>

### 6.1.1. Software Development Environment Configuration

<p align="justify">
En esta sección el equipo especifica, describe e indica los nombres de productos, el propósito de uso en el proyecto, la ruta de referencia (para software basado en modelos SaaS) o ruta de descarga (para productos que se ejecutan en el computador del miembro del equipo) de cada uno de los productos de software que deben utilizar los miembros del equipo para colaborar en el ciclo de vida de los productos digitales que forman la solución SafeCar. Se consideran todas las actividades de Project Management, Requirements Management, Product UX/UI Design, Software Development, Software Deployment y Software Documentation.
</p>

A continuación se detalla el **entorno de desarrollo** para SafeCar, indicando producto, propósito y ruta de acceso (SaaS o descarga). Todo el equipo debe instalar/usar estas herramientas para garantizar consistencia.

<table width="100%">
  <thead>
    <tr>
      <th>Categoría</th>
      <th>Producto</th>
      <th>Propósito en el proyecto</th>
      <th>Tipo</th>
      <th>Ruta de referencia / Descarga</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Project Management</td>
      <td>Trello</td>
      <td>Gestión de backlog, Sprints, board Kanban, Definition of Done</td>
      <td>SaaS</td>
      <td><a href="https://trello.com/" target="_blank" rel="noopener noreferrer">https://trello.com/</a></td>
    </tr>
    <tr>
      <td>Requirements</td>
      <td>Google Docs / Sheets</td>
      <td>Redacción de requisitos, matrices, trazabilidad</td>
      <td>SaaS</td>
      <td><a href="https://docs.google.com/" target="_blank" rel="noopener noreferrer">https://docs.google.com/</a></td>
    </tr>
    <tr>
      <td>UX/UI Design</td>
      <td>Figma</td>
      <td>Wireframes, mockups, prototipos, handoff</td>
      <td>SaaS</td>
      <td><a href="https://www.figma.com/" target="_blank" rel="noopener noreferrer">https://www.figma.com/</a></td>
    </tr>
    <tr>
      <td>Repos &amp; CI</td>
      <td>GitHub</td>
      <td>Repositorios, PRs, Issues</td>
      <td>SaaS</td>
      <td><a href="https://github.com/" target="_blank" rel="noopener noreferrer">https://github.com/</a></td>
    </tr>
    <tr>
      <td>Editor</td>
      <td>Visual Studio Code</td>
      <td>Editor principal (HTML, JS, Tailwind, Vue)</td>
      <td>Desktop</td>
      <td><a href="https://code.visualstudio.com/" target="_blank" rel="noopener noreferrer">https://code.visualstudio.com/</a></td>
    </tr>
    <tr>
      <td>API Testing</td>
      <td>Postman</td>
      <td>Colecciones para pruebas de endpoints</td>
      <td>Desktop/SaaS</td>
      <td><a href="https://www.postman.com/" target="_blank" rel="noopener noreferrer">https://www.postman.com/</a></td>
    </tr>
    <tr>
      <td>Frontend Tooling</td>
      <td>Node.js (LTS) &amp; npm</td>
      <td>Construcción, scripts, Vue CLI, Vite</td>
      <td>Desktop</td>
      <td><a href="https://nodejs.org/" target="_blank" rel="noopener noreferrer">https://nodejs.org/</a></td>
    </tr>
    <tr>
      <td>CSS Framework</td>
      <td>Tailwind CSS</td>
      <td>Estilos utility-first de la Landing Page y WebApp</td>
      <td>NPM</td>
      <td><a href="https://tailwindcss.com/" target="_blank" rel="noopener noreferrer">https://tailwindcss.com/</a></td>
    </tr>
    <tr>
      <td>Navegadores</td>
      <td>Chrome / Edge</td>
      <td>Pruebas y DevTools</td>
      <td>Desktop</td>
      <td><a href="https://www.google.com/chrome/" target="_blank" rel="noopener noreferrer">https://www.google.com/chrome/</a></td>
    </tr>
    <tr>
      <td>Software Documentation</td>
      <td>Markdown</td>
      <td>Documentación técnica, README, guías de contribución</td>
      <td>Texto plano</td>
      <td><a href="https://daringfireball.net/projects/markdown/" target="_blank" rel="noopener noreferrer">https://daringfireball.net/projects/markdown/</a></td>
    </tr>
    <tr>
      <td>Comunicación</td>
      <td>Google Meet</td>
      <td>Reuniones de sincronización</td>
      <td>SaaS</td>
      <td><a href="https://meet.google.com/" target="_blank" rel="noopener noreferrer">https://meet.google.com/</a></td>
    </tr>
  </tbody>
</table>

**Extensiones VS Code recomendadas**: ESLint, Prettier, Tailwind CSS IntelliSense, Vue Language Features (Volar), GitHub Pull Requests & Issues.

### 6.1.2. Source Code Management

<p align="justify">
En esta sección el equipo establece los medios y esquema de organización que aplicará para el seguimiento de modificaciones utilizando GitHub como plataforma y sistema de control de versiones. Se incluyen los URLs de los repositorios para cada producto: Landing Page, Web Services y Frontend Web Applications. Cada repositorio contiene el código fuente del proyecto y la documentación técnica correspondiente.
</p>

Los repositorios de código fuente del proyecto SafeCar se encuentran organizados en la organización GitHub **MetaSoft‑IoT**:

<table width="100%">
  <thead>
    <tr>
      <th>Producto</th>
      <th>Tecnologías</th>
      <th>Repositorio GitHub</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Landing Page</td>
      <td>HTML + Tailwind CSS</td>
      <td><a href="https://github.com/MetaSoft-IOT/safecar-landing-page" target="_blank" rel="noopener noreferrer">upc-pre-202520-1asi0572-3479-MetaSoft-Landing</a></td>
    </tr>
    <tr>
      <td>Backend</td>
      <td>Spring Boot + Java</td>
      <td><a href="https://github.com/MetaSoft-IOT/safecar-backend" target="_blank" rel="noopener noreferrer">upc-pre-202520-1asi0572-3479-MetaSoft-Backend</a></td>
    </tr>
    <tr>
      <td>Web Application</td>
      <td>Vue.js + JavaScript</td>
      <td><a href="https://github.com/MetaSoft-IOT/upc-1asi0572-2520-3479-iot-safecar-web-application-frontend" target="_blank" rel="noopener noreferrer">upc-pre-202520-1asi0572-3479-MetaSoft-WebApp</a></td>
    </tr>
  </tbody>
</table>

> **Nota (Sprint 1):** Durante el **primer sprint** todo el trabajo se realizó **directamente en `main`** (hotfixes incluidos), con revisiones por PR y QA manual, a fin de acelerar el baseline (landing + skeleton web). A partir del **Sprint 2** se activará **GitFlow completo** para aislar desarrollo y lanzamientos.

**Implementación de GitFlow Workflow**

El equipo implementa GitFlow como workflow de control de versiones siguiendo el modelo de Vincent Driessen:

- **Ramas principales**: 
  - `main` (producción): Contiene el código estable y listo para producción
  - `develop` (integración): Rama de desarrollo donde se integran todas las features

- **Ramas de soporte**: 
  - `feature/<scope-resumen>`: Para desarrollo de nuevas funcionalidades
  - `release/<version>`: Para preparación de nuevas versiones
  - `hotfix/<ticket|short>`: Para correcciones urgentes en producción

- **Convenciones de nombres**:
  - Features: `feature/i18n-toggle`, `feature/navbar-accessibility`, `feature/user-authentication`
  - Releases: `release/1.1.0`, `release/2.0.0`
  - Hotfixes: `hotfix/fix-lang-selector-null`, `hotfix/security-patch`

**Reglas de PR**
- Base: `develop` (o `main` solo para `hotfix/*`).
- Requisitos: build OK, lint OK, ≥1 reviewer, squash & merge.
- Commits: seguir **Conventional Commits**.

**Versionado semántico (SemVer)**
- Formato: `MAJOR.MINOR.PATCH` (ej.: `v1.0.0`).
- Tag en Git: cada release estable en `main` debe etiquetarse (`v1.0.0`).

**Conventional Commits (ejemplos)**
```
feat(i18n): add language toggle button in header
fix(nav): prevent anchor jump on mobile menu toggle
docs(readme): add deployment steps for GitHub Pages
refactor(ui): extract card component for pricing plans
chore(ci): add actions/setup-node to build workflow
```

### 6.1.3. Source Code Style Guide & Coding Conventions

<p align="justify">
En esta sección el equipo explica e indica las referencias que adoptará para nombrar elementos y programar en los lenguajes utilizados en la solución SafeCar (HTML, CSS, JavaScript, TypeScript, Java, así como Gherkin para los archivos .feature). Para todos los lenguajes se aplica la nomenclatura en inglés, adoptando convenciones estándares para coding que garanticen la legibilidad, mantenibilidad y consistencia del código a lo largo del proyecto.
</p>

**Idioma**: todo el **código, nombres y comentarios** en **inglés**.

**HTML**
- Semántico (`<header>`, `<nav>`, `<section>`, `<footer>`), indentación 2 espacios.
- Atributos de accesibilidad: `alt`, `aria-*`, `role` cuando aplique.
- Clases en **kebab-case**.

**CSS – TailwindCSS**
- Enfoque **utility‑first**; evitar CSS custom excepto tokens globales.
- Orden sugerido en atributos de clase: display/layout → spacing → sizing → typography → color → effects → responsive.
- Reutilización vía **component classes** o `@apply` solo si es necesario.

**JavaScript (ES6+)**
- `const`/`let`, arrow functions, template literals; evitar variables globales.
- **Naming**: camelCase para funciones/variables; PascalCase para constructores.
- Guía: [Google JavaScript Style Guide].

**JavaScript / Vue**
- Guía: [Vue 3 Style Guide]. Nombres de archivos en kebab-case: `user-profile.vue`.
- Componentes en PascalCase; Options API utilizada; validación de props con PropTypes cuando sea necesario.

**Java / Spring Boot**
- Guía: [Google Java Style Guide]. Paquetes en `lowercase`, clases en PascalCase.
- Capas: `api` (controllers), `application`, `domain`, `infrastructure` (Clean Architecture/DDD alineado a bounded contexts).

**Gherkin (.feature)**
- Estructura: `Feature`, `Scenario`, `Given/When/Then`; pasos en inglés, claros y testables.

**Lint & Format**
- **ESLint + Prettier** para JS; hooks con **Husky** (pre-commit: `lint --fix` y `format`).

_Referencias:_ HTML Style Guide and Coding Conventions; Google HTML/CSS Style Guide; Vue 3 Style Guide; Google Java Style Guide; Google JavaScript Style Guide; Spring Boot Features; Gherkin Conventions for Readable Specifications.

### 6.1.4. Software Deployment Configuration

<p align="justify">
En esta sección el equipo especifica la configuración del despliegue de la solución SafeCar, incluyendo los pasos necesarios para que, a partir de los repositorios de código fuente, se pueda lograr el despliegue o publicación satisfactorio de cada uno de los productos digitales en la solución (Landing Page, Web Services, Web Applications). La estrategia de despliegue garantiza la disponibilidad, escalabilidad y mantenibilidad de todos los componentes del sistema.
</p>

**Landing Page (GitHub Pages)**
1) `main` actualizado con `/dist` (según build local) o con fuentes estáticas.
2) En **Settings → Pages**: Source = `Deploy from a branch` utilizando rama `main`.
3) **Despliegue**: archivos estáticos se publican automáticamente desde la rama principal.
4) Verificación: URL pública activa + chequeo de recursos (`/assets/*`).

**Web Application Vue (configuración para despliegue futuro)**
- **Estrategia**: contenedores Docker con despliegue manual gestionado.
- **Build**: `npm run build` (Vite) → `docker build -t safecar-web:$(git rev-parse --short HEAD) .`
- **Env (placeholders)**: `VITE_API_BASE_URL`, `VITE_AUTH_ISSUER`, `VITE_SENTRY_DSN`.
- **Staging**: deploy automático al hacer merge a `develop`.
- **Producción**: release desde `release/*` → tag SemVer → deploy a `main`.

**Web Services (Spring Boot)**
- **Estrategia**: contenedores Docker + deployment en cloud provider.
- **Build**: `mvn clean package` → `docker build -t safecar-api:$(git rev-parse --short HEAD) .`
- **Env**: `SPRING_PROFILES_ACTIVE`, `DATABASE_URL`, `JWT_SECRET`.

**Checklist de despliegue (general)**
- [ ] Variables de entorno definidas y almacenadas como **GitHub Secrets**.
- [ ] Pipeline con jobs: `build` → `security-scan` → `deploy`.
- [ ] Verificación tras el deploy (status 200, assets, i18n, navegación básica).

> **Nota**: La Landing Page utiliza **TailwindCSS** y está **desplegada en GitHub Pages**. La aplicación web Vue utiliza **Vite** como build tool y **Options API** para la estructura de componentes. Los Web Services Spring Boot siguen arquitectura de capas con controladores REST. La configuración completa se implementará según los entornos definidos.

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
        <td>Attendees (to planning meeting)</td>
        <td>
        Saldaña Vela, Janover Gonzalo / Holguin Gamarra, Hardie Alfonso / Mendoza Solis, Javier Kenyi / Aguirre Rodríguez, Gustavo Jandroel / Irigoyen Matos, Javier Sharvel / Zavala Quedena, Gonzalo Andre / Burga Loarte, Anaely Zarely
        </td>
    </tr>
    <tr>
      <td>Sprint - Review Summary</td>
      <td align="justify">
          Este es el primer Sprint del proyecto, por lo que no existe un Sprint anterior para revisar. El equipo se encuentra en la fase inicial de desarrollo, estableciendo las bases del producto y definiendo los procesos de trabajo colaborativo.
      </td>
    </tr>
    <tr>
      <td>Sprint - Retrospective Summary</td>
      <td align="justify">
        Al ser el primer Sprint del proyecto, no existe una retrospectiva previa para analizar. Sin embargo, el equipo estableció los fundamentos para futuras retrospectivas: se acordó implementar reuniones de retrospectiva al final de cada sprint, se definieron los canales de comunicación para feedback continuo, y se establecieron las métricas básicas de seguimiento. El equipo también acordó las herramientas de colaboración (GitHub, Google Meet, Trello) y las prácticas de desarrollo que servirán como baseline para evaluar mejoras en sprints posteriores.
      </td>
    </tr>
    <tr>
        <td colspan="2">Sprint Goal & User Stories</td>
        <td></td>
    </tr>
    <tr>
        <td>Sprint 1 Goal</td>
        <td align="justify">
        Nuestro enfoque está en ofrecer una primera versión completamente funcional del entorno visual e interactivo de SafeCar, que incluye la landing page y los principales módulos de la aplicación web: historial de servicio, solicitud de servicio mecánico, e interfaces de inicio de sesión y registro. 
        <br><br>
        Creemos que esto permite validar la experiencia integral del usuario (conductores y mecánicos de taller) y la coherencia de los flujos principales del sistema, incluso utilizando datos simulados mientras se desarrolla la integración con el backend.
        <br><br>
        Esto se confirmará cuando los usuarios puedan navegar por la landing page, registrarse o iniciar sesión, y gestionar solicitudes e historiales de servicio con una interacción fluida y coherente en el entorno de pruebas.
        </td>
    </tr>
    <tr>
       <td>Sprint 1 Velocity</td>
        <td align="justify">
        Se establece una velocidad inicial de 23 Story Points, correspondiente a la capacidad total comprometida por el equipo durante la planificación del Sprint 1. Esta métrica servirá como referencia base para medir el rendimiento y ajustar la capacidad del equipo en los siguientes Sprints.
        </td>
    </tr>
    <tr>
        <td>Sum of Story Points</td>
        <td>23</td>
    </tr>
</table>


#### 6.2.1.2. Aspect Leaders and Collaborators

<p align="justify">
Durante el Sprint 1, el equipo organizó el trabajo en ocho aspectos principales que abarcan el desarrollo de la Landing Page y las funcionalidades core de la aplicación web. La matriz de liderazgo y colaboración (LACX) define claramente las responsabilidades de cada miembro, designando líderes (L) y colaboradores (C) para cada aspecto, facilitando la coordinación efectiva del trabajo durante el sprint.
</p>

<table width="100%">
    <tr>
        <th>Team Member (Last Name, First Name)</th>
        <th>GitHub Username</th>
        <th>A1 – Landing Navigation & CTA (L) / Collaborator (C)</th>
        <th>A2 – Internationalization & Locale (L) / Collaborator (C)</th>
        <th>A3 – Pricing Plans & Accessibility (L) / Collaborator (C)</th>
        <th>A4 – Social Links & Footer (L) / Collaborator (C)</th>
        <th>A5 – Responsive Design (L) / Collaborator (C)</th>
        <th>A6 – Security & Identity Management (L) / Collaborator (C)</th>
        <th>A7 – Service History Management (L) / Collaborator (C)</th>
        <th>A8 – Service Request Management (L) / Collaborator (C)</th>
    </tr>
    <tr>
        <td>Janover Gonzalo Saldaña Vela</td>
        <td>JanoverSaldana</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>A6 – Security & Identity Management (L)</td>
        <td>A7 – Service History Management (L)</td>
        <td>A8 – Service Request Management (L)</td>
    </tr>
    <tr>
        <td>Hardie Alfonso Holguin Gamarra</td>
        <td>HOLGUINUPC</td>
        <td>A1 – Landing Navigation & CTA (C)</td>
        <td>A2 – Internationalization & Locale (C)</td>
        <td>A3 – Pricing Plans & Accessibility (C)</td>
        <td>-</td>
        <td>A5 – Responsive Design (C)</td>
        <td>A6 – Security & Identity Management (C)</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Javier Kenyi Mendoza Solis</td>
        <td>Kenyi-Mendoza-Solis</td>
        <td>A1 – Landing Navigation & CTA (C)</td>
        <td>A2 – Internationalization & Locale (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A5 – Responsive Design (C)</td>
        <td>A6 – Security & Identity Management (C)</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Gustavo Jandroel Aguirre Rodríguez</td>
        <td>Jandroel</td>
        <td>A1 – Landing Navigation & CTA (C)</td>
        <td>-</td>
        <td>A3 – Pricing Plans & Accessibility (C)</td>
        <td>A4 – Social Links & Footer (L)</td>
        <td>A5 – Responsive Design (C)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Javier Sharvel Irigoyen Matos</td>
        <td>sharvel-irigoyen</td>
        <td>A1 – Landing Navigation & CTA (C)</td>
        <td>A2 – Internationalization & Locale (C)</td>
        <td>-</td>
        <td>A4 – Social Links & Footer (C)</td>
        <td>-</td>
        <td>A6 – Security & Identity Management (C)</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Gonzalo Andre Zavala Quedena</td>
        <td>GonzaloQu3dena</td>
        <td>A1 – Landing Navigation & CTA (L)</td>
        <td>A2 – Internationalization & Locale (L)</td>
        <td>A3 – Pricing Plans & Accessibility (L)</td>
        <td>-</td>
        <td>A5 – Responsive Design (L)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Anaely Zarely Burga Loarte</td>
        <td>userxx1000</td>
        <td>A1 – Landing Navigation & CTA (C)</td>
        <td>A2 – Internationalization & Locale (C)</td>
        <td>A3 – Pricing Plans & Accessibility (C)</td>
        <td>A4 – Social Links & Footer (C)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
</table>

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
            Implementar UI de sección de Planes con plan Estándar en Landing Page
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
            Redireccionar al proceso de compra luego de click en "Select" de algún plan mostrado en sección "Plans" de la Landing Page
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T20</td>
        <td>
            Botones por plan "Select" en la UI de la Landing page
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
        <td>T32</td>
        <td>
           Mostrar mensajes de error de validación de los campos nombre, apellidos, teléfono
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T33</td>
        <td>
           Mostrar mensajes de error (email existente / formato inválido) en UI para SignUp
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T34</td>
        <td>
           Mostrar mensajes de error (Requerimientos de contraseña inválida) en UI de SignUp
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T35</td>
        <td>
           Servidor valida campo nombre y apellido que solo sean caracteres y máximo 50 caracteres cada uno
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T36</td>
        <td>
           Mostrar mensaje de éxito al registrarse (Se registró correctamente) y redirección a SignIn
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
     <tr>
        <td>T37</td>
        <td>
           Servidor valida contraseña de usuario segura (+8 caracteres, >= 1 simbolo)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T38</td>
        <td>
           Servidor verifica unicidad de email al momento de realizar SignUp
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T39</td>
        <td>
           Servidor valida teléfono de usuario (solo dígitos, máx. 9)
        </td>
        <td>1</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="4">US204</td>
        <td rowspan="4">Como usuario autenticado deseo cerrar sesión de manera segura para proteger mi cuenta cuando termino de usar el sistema</td>
        <td>T40</td>
        <td rowspan="4">Cierre de sesión de usuario en la Aplicación Web</td>
        <td>
          Botón de "Sign Out" en la UI del perfil de usuario y cierre de sesión
        </td>
        <td>3</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T41</td>
        <td>
           Redirección a la UI de SignIn luego de hacer SignOut
        </td>
        <td>1</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T42</td>
        <td>
           Mostrar mensaje de confirmación en la UI después de cerrar sesión
        </td>
        <td>2</td>
        <td>Janover Saldaña</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T43</td>
        <td>
           Eliminar token de autenticación en LocalStorage para que el usuario no acceda después de cerrar sesión
        </td>
        <td>3</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td rowspan="6">US206</td>
        <td rowspan="6">Como usuario deseo modificar mis credenciales básicas de perfil para mantener mi información al día</td>
        <td>T44</td>
        <td rowspan="6"></td>
        <td>
          Servidor guarda cambios de credenciales modificadas del perfil y UI muestra mensaje de confirmación
        </td>
        <td>3</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T45</td>
        <td>
           Ver nombre, teléfono, entre otros datos personales desde UI luego de edición
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T46</td>
        <td>
           Botón "Editar" para los campos nombre, teléfono (campos obligatorios) desde la Aplicación Web
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T47</td>
        <td>
            Implementar UI de formulario en Aplicación Web para edición de credenciales (nombre, apellido, correo, contraseña, etc)
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T48</td>
        <td>
            Mostrar mensaje de error cuando los datos editados no cumplan con el formato (teléfono, correo o nombre inválido) en la UI de la Aplicación Web
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
    <tr>
        <td>T49</td>
        <td>
            Mostrar mensajes de confirmación o error en la UI de Aplicación Web según el resultado de la actualización
        </td>
        <td>2</td>
        <td>Gonzalo Quedena</td>
        <td>Done</td>
    </tr>
</table>


### Sprint 1 — *SafeCar*

El **Sprint 1** del proyecto **SafeCar** se centró en establecer las bases de la experiencia de usuario (UX) y las funcionalidades iniciales de acceso, priorizando la usabilidad y el flujo de autenticación del sistema.

---

<img src="../assets/img/capitulo-VI/sprint 1.png" alt="Sprint 1 - SafeCar" style="width: 100%; max-width: 800px;">


#### 6.2.1.4. Development Evidence for Sprint Review

<p align="justify">
Durante el Sprint 1, el equipo realizó avances significativos en la implementación de los productos de la solución SafeCar, abarcando tanto la Landing Page como las funcionalidades principales de la aplicación web. Los principales logros incluyen la implementación completa de la navegación y componentes de la Landing Page, el desarrollo de los sistemas de autenticación y registro de usuarios, y la creación de las interfaces para la gestión de perfiles. La tabla a continuación presenta el registro detallado de commits realizados en cada repositorio, documentando el progreso de desarrollo y las contribuciones de cada miembro del equipo durante este primer sprint.
</p>

<table width="100%">
  <tr>
    <th>Repository</th>
    <th>Branch</th>
    <th>Commit Id</th>
    <th>Commit Message</th>
    <th>Commit Message Body</th>
    <th>Commit on (Date)</th>
  </tr>

  <!-- Commits by GonzaloQu3dena -->
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>a91c7de</td>
    <td>Initial commit</td>
    <td>Commit inicial del proyecto SafeCar Landing Page.</td>
    <td>31/08/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>c4e18fa</td>
    <td>chore: initial commit</td>
    <td>Configuración inicial del repositorio, estructura base y dependencias iniciales.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>e72b1c9</td>
    <td>chore(img): add safecar logo</td>
    <td>Se agrega el logotipo de SafeCar como recurso de imagen.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>f29a63b</td>
    <td>build(css): compile Tailwind v4 in GH Actions</td>
    <td>Configura compilación automática de TailwindCSS v4 en GitHub Actions.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>bd81f5a</td>
    <td>chore: update npm scripts for tailwind workflow</td>
    <td>Actualiza scripts npm para integrar el flujo de trabajo con Tailwind.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>9ce4d22</td>
    <td>refactor(nav-menu): move menu logic to clean up the HTML</td>
    <td>Refactoriza la lógica del menú de navegación para mejorar la organización del código HTML.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>b6d9a4c</td>
    <td>feat(index): add i18n implementation</td>
    <td>Se implementa la internacionalización (i18n) en la página principal.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>d45a2b7</td>
    <td>feat(i18n): add i18n resources</td>
    <td>Se agregan los recursos de traducción para i18n (archivos de idioma).</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>e91c8fe</td>
    <td>refactor(index): set default language to English</td>
    <td>Define el inglés como idioma predeterminado del sitio.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>f71b6c4</td>
    <td>feat(index): add footer and link sections</td>
    <td>Agrega el footer y las secciones de enlaces al sitio principal.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>c28a1fd</td>
    <td>feat(index): add section about the team</td>
    <td>Implementa la sección “Sobre el equipo” en la landing page.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>d57e3b2</td>
    <td>feat(index): add section about the app</td>
    <td>Agrega la sección informativa sobre la aplicación SafeCar.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>e62d9f8</td>
    <td>feat(index): add contact section</td>
    <td>Implementa la sección de contacto con formulario y enlaces.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>f93a5dc</td>
    <td>feat(index): add plans and testimonials section</td>
    <td>Agrega las secciones de planes y testimonios a la landing page.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>a12e48b</td>
    <td>feat(index): add benefits section</td>
    <td>Agrega la sección de beneficios destacados de la aplicación.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>b71d2a9</td>
    <td>feat(index): add header and hero sections</td>
    <td>Implementa el encabezado y la sección hero principal del sitio.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>c84f1e3</td>
    <td>style: add Nunito font and custom theme colors to tailwind config</td>
    <td>Agrega la fuente Nunito y define colores personalizados en Tailwind.</td>
    <td>01/09/2025</td>
  </tr>
  <tr>
    <td>SafeCar-landingPage</td>
    <td>main</td>
    <td>d19b3f5</td>
    <td>chore: add burger and close svg resources</td>
    <td>Se añaden los íconos SVG de menú hamburguesa y cierre.</td>
    <td>01/09/2025</td>
  </tr>

  <!-- Commits by JanoverSaldana -->
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>e23f7c1</td>
    <td>feat(favicon): remove old favicon and add new icon asset</td>
    <td>Se elimina el favicon anterior y se agrega un nuevo ícono representativo de SafeCar.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>f91a3b7</td>
    <td>feat(router): add route for vehicle detail management component</td>
    <td>Se agrega una nueva ruta al router para el componente de gestión de detalles del vehículo.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>a56e2d4</td>
    <td>feat(vehicle-api): add methods for create, update, delete, and telemetry retrieval</td>
    <td>Implementa los métodos CRUD y de obtención de telemetría en VehicleApiService.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>b37f9a8</td>
    <td>fix(iot-device): update signal strength and data frequency parameter descriptions</td>
    <td>Actualiza las descripciones de los parámetros de intensidad de señal y frecuencia de datos.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>c44d8f6</td>
    <td>feat(vehicle-management): add localization for vehicle management</td>
    <td>Se añaden traducciones y localización completa del módulo de gestión de vehículos.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>d82c7a9</td>
    <td>feat(main): add PrimeVue Message and TabView components</td>
    <td>Agrega componentes Message y TabView, además del registro del Tooltip directive en PrimeVue.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>e99b5d3</td>
    <td>feat(vehicle-detail): enhance vehicle detail component</td>
    <td>Mejora la UI y el manejo de datos del componente de detalles del vehículo.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>f12e4a7</td>
    <td>feat(vehicle-analytics-detail): refactor analytics detail component</td>
    <td>Refactoriza el componente de detalle analítico para mejorar rendimiento y estructura visual.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>a64d3b5</td>
    <td>feat(vehicle-telemetry-detail): refactor telemetry detail component</td>
    <td>Mejora el componente de detalle de telemetría con UI optimizada y mejor gestión de datos.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>b19a6e8</td>
    <td>feat(vehicle-detail-management): implement vehicle detail management with tabbed interface</td>
    <td>Implementa el módulo de gestión de detalle de vehículos con interfaz tabulada y conexión API.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>c75e1d9</td>
    <td>feat(vehicle-management): enhance vehicle management component</td>
    <td>Agrega filtros avanzados y mejora la manipulación de datos del componente de gestión vehicular.</td>
    <td>08/10/2025</td>
  </tr>
  <tr>
    <td>SafeCar-frontend</td>
    <td>main</td>
    <td>d13f9a4</td>
    <td>feat(service-history): add initial service history component</td>
    <td>Se agrega el componente y servicio inicial de historial de mantenimiento.</td>
    <td>08/10/2025</td>
  </tr>
</table>



#### 6.2.1.5. Testing Suite Evidence for Sprint Review

<p align="justify">
Esta sección documenta las pruebas automatizadas del sprint, incluyendo Unit Tests para componentes individuales, Integration Tests para la comunicación entre módulos, y Acceptance Tests BDD con archivos .feature en Gherkin que validen las User Stories implementadas.
</p>

<p align="justify">
Durante el Sprint 1, el desarrollo se concentró en establecer la arquitectura fundamental y las funcionalidades principales de SafeCar, por lo que <strong>no se implementaron pruebas automatizadas</strong>. Esta decisión permitió al equipo enfocar recursos en crear un producto base funcional que los stakeholders pudieran evaluar, dejando la suite de testing para iteraciones posteriores donde el sistema esté más consolidado.
</p>

<p align="justify">
La implementación de pruebas automatizadas está planificada para el Sprint 2, cuando se establecerá una estrategia integral de testing que asegure la calidad del código y la validación continua de los requisitos del sistema.
</p>


#### 6.2.1.6. Execution Evidence for Sprint Review

<p align="justify">
El Sprint 1 logró establecer la base funcional completa del proyecto SafeCar, implementando una Landing Page responsive con soporte bilingüe (español/inglés) y los módulos principales de la aplicación web. Se desarrollaron funcionalidades integrales desde la autenticación de usuarios hasta la gestión avanzada de vehículos con capacidades IoT.
</p>

<p align="justify">
Las vistas implementadas abarcan login y registro de usuarios, gestión de citas de mantenimiento con detalles, seguimiento del historial de reparaciones vehiculares, y un sistema completo de gestión de vehículos que incluye telemetría en tiempo real, análisis de datos operacionales e información de dispositivos IoT integrados.
</p>

<p align="justify">
A continuación se presentan capturas de pantalla de las principales vistas desarrolladas, demostrando la calidad visual y funcional lograda en cada componente del sistema.
</p>

**Principales vistas implementadas:**

- **Landing Page:** Página principal with navegación, secciones informativas, planes y contacto

  <div align="center">
    <img src="../assets/img/capitulo-VI/hero-landing-page.png" alt="Hero Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 1: Sección Hero de la Landing Page con navegación principal y call-to-action</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/Benefits-landing-page.png" alt="Benefits Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 2: Sección de beneficios destacando las características principales del sistema</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/about-the-app-landing-page.png" alt="About the App Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 3: Sección informativa sobre la aplicación SafeCar</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/plans-landing-page.png" alt="Plans Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 4: Sección de planes y precios con opciones de suscripción</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/testimonials-landing-page.png" alt="Testimonials Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 5: Sección de testimonios de usuarios</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/contact-us-landing-page.png" alt="Contact Us Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 6: Sección de contacto con formulario y información de contacto</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/about-the-team-landing-page.png" alt="About the Team Section - Landing Page SafeCar" width="800"/>
    <p><em>Figura 7: Sección sobre el equipo de desarrollo MetaSoft</em></p>
  </div>

- **Autenticación:** Formularios de login y registro de usuarios

  <div align="center">
    <img src="../assets/img/capitulo-VI/login-web-application.png" alt="Login Interface - SafeCar Web Application" width="800"/>
    <p><em>Figura 8: Interfaz de inicio de sesión de la aplicación web SafeCar</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/sign-up-web-application.png" alt="Sign Up Interface - SafeCar Web Application" width="800"/>
    <p><em>Figura 9: Interfaz de registro de usuarios de la aplicación web SafeCar</em></p>
  </div>

- **Gestión de Citas:** Interfaces para programación, visualización y detalles de citas de mantenimiento

  <div align="center">
    <img src="../assets/img/capitulo-VI/appointments-web-application.png" alt="Appointments Management - SafeCar Web Application" width="800"/>
    <p><em>Figura 10: Módulo de gestión de citas de mantenimiento</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/appointment-detail-web-application.png" alt="Appointment Detail - SafeCar Web Application" width="800"/>
    <p><em>Figura 11: Vista detallada de cita de mantenimiento</em></p>
  </div>

- **Historial de Reparaciones:** Módulo de seguimiento y consulta del historial vehicular

  <div align="center">
    <img src="../assets/img/capitulo-VI/vehicle-history-web-application.png" alt="Vehicle History - SafeCar Web Application" width="800"/>
    <p><em>Figura 12: Módulo de historial de reparaciones vehiculares</em></p>
  </div>

- **Gestión de Vehículos:** Panel principal de administración de vehículos

  <div align="center">
    <img src="../assets/img/capitulo-VI/vehicle-management-web-application.png" alt="Vehicle Management - SafeCar Web Application" width="800"/>
    <p><em>Figura 13: Panel de gestión de vehículos</em></p>
  </div>

  <div align="center">
    <img src="../assets/img/capitulo-VI/vehicle-detail-web-application.png" alt="Vehicle Detail - SafeCar Web Application" width="800"/>
    <p><em>Figura 14: Vista detallada de vehículo con información completa</em></p>
  </div>

- **Telemetría Vehicular:** Visualización en tiempo real de datos del vehículo

  <div align="center">
    <img src="../assets/img/capitulo-VI/vehicle-telemetry-web-application.png" alt="Vehicle Telemetry - SafeCar Web Application" width="800"/>
    <p><em>Figura 15: Dashboard de telemetría vehicular en tiempo real</em></p>
  </div>

- **Análisis de Datos:** Dashboard con métricas y análisis operacionales

  <div align="center">
    <img src="../assets/img/capitulo-VI/vehicle-analytics-web-application.png" alt="Vehicle Analytics - SafeCar Web Application" width="800"/>
    <p><em>Figura 16: Dashboard de análisis de datos operacionales</em></p>
  </div>

- **Dashboard en Desarrollo:** Panel principal de la aplicación web

  <div align="center">
    <img src="../assets/img/capitulo-VI/dashboard-in-development-web-application..png" alt="Dashboard in Development - SafeCar Web Application" width="800"/>
    <p><em>Figura 17: Dashboard principal en desarrollo de la aplicación web</em></p>
  </div>

<p align="justify">
<strong>Video demostrativo:</strong> Para una comprensión integral del trabajo realizado, se ha preparado un video que ilustra la navegación completa a través de las funcionalidades implementadas, mostrando los flujos de usuario desde la Landing Page hasta las principales operaciones dentro de la aplicación web.
</p>

<div align="center">
  <img src="../assets/img/capitulo-VI/demo-execution-evidence-for-sprint-01.png" alt="Demo Execution Evidence - Sprint 1 SafeCar" width="800"/>
  <p><em>Figura 18: Vista previa del video demostrativo del Sprint 1 mostrando las funcionalidades implementadas</em></p>
</div>

**Enlace al video de demostración:** [https://youtu.be/bzoLGLyBfWk](https://youtu.be/bzoLGLyBfWk)

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

<p align="justify">
Durante el Sprint 1, el desarrollo se enfocó en la implementación y despliegue de dos componentes principales: la Landing Page y la aplicación web. En términos de servicios web, se establecieron los endpoints básicos necesarios para soportar estas dos aplicaciones, priorizando la funcionalidad esencial para demostrar la viabilidad del sistema SafeCar.
</p>

<p align="justify">
Los logros alcanzados incluyen la configuración de endpoints que permiten el acceso directo a la Landing Page y a la aplicación web, estableciendo la infraestructura base para la navegación entre ambos componentes del sistema. Esta aproximación permite a los usuarios acceder seamlessly desde la presentación del producto hasta las funcionalidades principales de la aplicación.
</p>

**Endpoints implementados durante el Sprint 1:**

<table width="100%">
  <thead>
    <tr>
      <th>Componente</th>
      <th>Verbo HTTP</th>
      <th>Sintaxis de Llamada</th>
      <th>Descripción</th>
      <th>Ejemplo de Response</th>
      <th>Estado</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Landing Page</td>
      <td>GET</td>
      <td>https://metasoft-iot.github.io/safecar-landing-page/</td>
      <td>
        Sitio Web principal (Landing Page)<br>
      </td>
      <td>
        HTML completo de la Landing Page<br>
        con soporte i18n y navegación<br>
        responsiva
      </td>
      <td>Desplegado</td>
    </tr>
    <tr>
      <td>Web Application</td>
      <td>GET</td>
      <td>https://safecar-v1.netlify.app/</td>
      <td>
        Aplicación web principal de SafeCar<br>
        Redirige a login si no autenticado
      </td>
      <td>
        SPA (Single Page Application)<br>
        con rutas internas para:<br>
        /login, /register, /dashboard,<br>
        /vehicles, /appointments
      </td>
      <td>Desplegado</td>
    </tr>
  </tbody>
</table>


**Repositorios:**
- **URL del repositorio Landing Page:** [https://github.com/MetaSoft-IOT/safecar-landing-page](https://github.com/MetaSoft-IOT/safecar-landing-page)
- **URL del repositorio Web Application:** [https://github.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-SafeCar-Frontend](https://github.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-SafeCar-Frontend)


#### 6.2.1.8. Software Deployment Evidence for Sprint Review

<p align="justify">
El despliegue durante el Sprint 1 materializó el trabajo desarrollado en productos accesibles para usuarios reales. La estrategia se centró en utilizar plataformas reconocidas por su confiabilidad, permitiendo concentrar esfuerzos en la calidad del producto más que en la complejidad de infraestructura.
</p>

<p align="justify">
Se desplegaron ambos componentes en plataformas específicas según sus características: GitHub Pages para la Landing Page (sitio estático) y Netlify para la aplicación web Vue.js (SPA con routing dinámico). GitHub Pages proporcionó integración directa con el repositorio, HTTPS automático y CDN global, mientras que Netlify ofreció capacidades avanzadas para aplicaciones JavaScript modernas, incluyendo manejo apropiado del Vue Router y preview deployments.
</p>


**Evidencias de Despliegue**

**Landing Page - GitHub Pages:**

<div align="center">
  <img src="../assets/img/capitulo-VI/deploy-landing-page.png" alt="Deploy Landing Page - GitHub Pages" width="800"/>
  <p><em>Figura 18: Configuración y despliegue de la Landing Page en GitHub Pages</em></p>
</div>

**Aplicación Web - Netlify:**

<div align="center">
  <img src="../assets/img/capitulo-VI/deploy-web-application.png" alt="Deploy Web Application - Netlify" width="800"/>
  <p><em>Figura 19: Configuración y despliegue de la aplicación web en Netlify</em></p>
</div>


<p align="justify">
El despliegue exitoso establece una base sólida para el desarrollo continuo, con integración automatizada que permitirá futuras actualizaciones sin fricción, manteniendo el enfoque del equipo en el desarrollo de nuevas funcionalidades. Las evidencias visuales del proceso y las URLs de acceso se encuentran documentadas en la correspondiente sección de Services Documentation.
</p>


#### 6.2.1.9. Team Collaboration Insights during Sprint

<p align="justify">
Durante el Sprint 1, el equipo MetaSoft implementó una estrategia de colaboración distribuida, coordinando el desarrollo de tres productos principales: Landing Page (liderada por Gonzalo Zavala), aplicación web (liderada por Janover Saldaña), e infraestructura de despliegue (coordinación conjunta). Esta metodología garantizó la participación activa de todos los miembros en múltiples áreas, distribuyendo el conocimiento del proyecto y fortaleciendo la capacidad colectiva del equipo.
</p>

**Analíticos de Colaboración en GitHub**

<p align="justify">
Los datos extraídos de GitHub proporcionan una perspectiva cuantitativa de la colaboración del equipo, revelando patrones de contribución, frecuencia de commits, y distribución del trabajo a lo largo del sprint. Los analíticos de Pulse y Contributors de ambos repositorios confirman la participación equilibrada de todos los miembros y demuestran la efectividad de la metodología de trabajo colaborativo adoptada.
</p>

**Repositorio Landing Page - Analíticos de Pulse y Contributors**

**GitHub Pulse - Actividad del Repositorio:**

<figure align="center">
  <img src="../assets/img/capitulo-VI/sprint-1-pulse-landing-page.png" alt="GitHub Pulse Analytics - Landing Page Repository" style="width: 100%; max-width: 800px;">
  <figcaption><strong>Figura 20.</strong> Analíticos de Pulse del repositorio Landing Page mostrando la actividad de commits, pull requests y colaboradores durante el Sprint 1.</figcaption>
</figure>

**Contributors - Participación del Equipo:**

<figure align="center">
  <img src="../assets/img/capitulo-VI/sprint-1-contribuitors-landing-page.png" alt="GitHub Contributors Analytics - Landing Page Repository" style="width: 100%; max-width: 800px;">
  <figcaption><strong>Figura 21.</strong> Analíticos de Contributors del repositorio Landing Page detallando las contribuciones individuales por miembro del equipo, incluyendo commits y líneas de código modificadas.</figcaption>
</figure>

**Repositorio Web Application - Analíticos de Pulse y Contributors**

**GitHub Pulse - Actividad del Repositorio:**

<figure align="center">
  <img src="../assets/img/capitulo-VI/sprint-1-pulse-web-application.png" alt="GitHub Pulse Analytics - Web Application Repository" style="width: 100%; max-width: 800px;">
  <figcaption><strong>Figura 22.</strong> Analíticos de Pulse del repositorio Web Application mostrando la frecuencia de actividad, distribución temporal de commits y participación activa del equipo durante el sprint.</figcaption>
</figure>

**Contributors - Participación del Equipo:**

<figure align="center">
  <img src="../assets/img/capitulo-VI/sprint-1-contributors-web-application.png" alt="GitHub Contributors Analytics - Web Application Repository" style="width: 100%; max-width: 800px;">
  <figcaption><strong>Figura 23.</strong> Analíticos de Contributors del repositorio Web Application evidenciando las contribuciones específicas de cada miembro, incluyendo commits realizados y volumen de código desarrollado.</figcaption>
</figure>

**Insights Específicos por Repositorio:**

- **Landing Page:** Los analíticos muestran liderazgo claro de Gonzalo Quedena con contribuciones sustanciales, respaldado por participación activa de todo el equipo en diferentes componentes de la interfaz y funcionalidades.

- **Web Application:** La actividad de commits evidencia el liderazgo técnico de Janover Saldaña en la implementación de sistemas complejos, con colaboración significativa del equipo en componentes de autenticación y gestión de datos.</p>

**Lecciones Aprendidas y Proyecciones:**

Los analíticos también revelan oportunidades de mejora para futuros sprints, particularmente en términos de balancear mejor la carga de trabajo entre todos los miembros y establecer puntos de sincronización más frecuentes para componentes que requieren integración estrecha. La experiencia positiva del Sprint 1 establece una base sólida para escalar la colaboración en iteraciones futuras con mayor complejidad técnica.

### Herramientas y Procesos de Colaboración

**Plataformas Utilizadas:**
- **GitHub:** Control de versiones, seguimiento de issues, y revisión de código
- **Google Meet:** Reuniones de sincronización y planificación
- **Trello:** Gestión del backlog y seguimiento de tareas
- **Visual Studio Code:** Desarrollo colaborativo con extensiones de integración

### 6.2.2. Sprint 2
#### 6.2.2.1. Sprint Planning 2

<p align="justify">
El Sprint 2 representa una evolución significativa del proyecto SafeCar, enfocándose en el refinamiento y expansión de las funcionalidades establecidas durante el Sprint 1. Este ciclo se centra en implementar correcciones críticas basadas en el feedback del Sprint Review, expandir la cobertura de segmentos objetivo, y avanzar hacia un ecosistema completo que incluye backend y aplicación móvil. La iteración busca consolidar la experiencia de usuario y establecer la infraestructura necesaria para escalar el sistema hacia una solución integral de gestión vehicular.
</p>

<table width="100%">
    <tr>
        <th>Sprint #</th>
        <th>Sprint 2</th>
    </tr>
    <tr>
        <td colspan="2">Sprint Planning Background</td>
        <td></td>
    </tr>
    <tr>
        <td>Date</td>
        <td>2025-10-14</td>
    </tr>
    <tr>
        <td>Time</td>
        <td>09:15 AM</td>
    </tr>
    <tr>
        <td>Location</td>
        <td align="justify">
        La reunión de planificación del Sprint 2 fue realizada de manera presencial en las instalaciones de UPC, con participación híbrida mediante Google Meet para miembros remotos
        </td>
    </tr>
    <tr>
        <td>Prepared By</td>
        <td>
        Saldaña Vela, Janover Gonzalo
        </td>
    </tr>
    <tr>
        <td>Attendees (to planning meeting)</td>
        <td>
        Saldaña Vela, Janover Gonzalo / Holguin Gamarra, Hardie Alfonso / Mendoza Solis, Javier Kenyi / Aguirre Rodríguez, Gustavo Jandroel / Irigoyen Matos, Javier Sharvel / Zavala Quedena, Gonzalo Andre / Burga Loarte, Anaely Zarely
        </td>
    </tr>
    <tr>
        <td>Sprint 1 - Review Summary</td>
        <td align="justify">
        El Sprint 1 fue exitoso en establecer la base funcional del proyecto SafeCar, logrando el despliegue de la Landing Page y la aplicación web con funcionalidades core gestión vehicular. Sin embargo, el Sprint Review identificó oportunidades de mejora significativas: la Landing Page requiere mejor segmentación para mecánicos y mayor responsividad, la aplicación web necesita correcciones de localización y nomenclatura (History → Service Orders), y el proyecto requiere expandir hacia backend y móvil para completar el ecosistema. El feedback de stakeholders fue positivo respecto a la calidad visual pero enfatizó la necesidad de mayor integración entre componentes.
        </td>
    </tr>
    <tr>
        <td>Sprint 1 - Retrospective Summary</td>
        <td align="justify">
        El equipo identificó fortalezas en la colaboración técnica y la calidad del diseño visual, pero reconoció áreas de mejora en la planificación de la integración continua. Se destacó la efectividad del trabajo distribuido pero se identificó la necesidad de mayor sincronización entre frontend y backend. Las lecciones aprendidas incluyen la importancia de validar tempranamente con usuarios reales y establecer criterios de aceptación más específicos para elementos de UX/UI. El equipo acordó implementar revisiones de código más frecuentes y establecer checkpoints intermedios para el Sprint 2.
        </td>
    </tr>
    <tr>
        <td colspan="2">Sprint Goal & User Stories</td>
        <td></td>
    </tr>
    <tr>
        <td>Sprint 2 Goal</td>
        <td align="justify">
        Nuestro enfoque está en entregar una experiencia mejorada y expandida de SafeCar que incluye correcciones críticas de usabilidad, contenido segmentado para mecánicos, integración backend funcional, y el inicio de la aplicación móvil.
        <br><br>
        Creemos que esto entrega mayor valor y cobertura de mercado a conductores y mecánicos, mejor experiencia de usuario a través de correcciones específicas, y capacidades técnicas expandidas a través del ecosistema completo (web, móvil, backend).
        <br><br>
        Esto se confirmará cuando los mecánicos puedan identificar contenido relevante en la Landing Page, los usuarios experimenten navegación fluida sin problemas de localización en la aplicación web, el backend soporte operaciones CRUD completas, y la aplicación móvil permita funcionalidades básicas de gestión vehicular.
        </td>
    </tr>
    <tr>
       <td>Sprint 2 Velocity</td>
        <td align="justify">
        Basándose en el rendimiento del Sprint 1 (23 Story Points completados), el equipo establece una velocidad objetivo de 86 Story Points para el Sprint 2. Este incremento del 274% refleja la expansión significativa del alcance del proyecto hacia múltiples plataformas (web, móvil, backend), la mayor experiencia del equipo, y la infraestructura establecida durante el primer sprint. Esta métrica permitirá evaluar la capacidad real del equipo en un contexto de desarrollo más complejo y multidimensional.
        </td>
    </tr>
    <tr>
        <td>Sum of Story Points</td>
        <td>86</td>
    </tr>
</table>

#### 6.2.2.2. Aspect Leaders and Collaborators

<p align="justify">
Para el Sprint 2, el equipo organizó el trabajo bajo un enfoque de Domain-Driven Design, donde cada Bounded Context se implementa de manera independiente en cada plataforma específica. Cada equipo (Backend, Web Application, Mobile Application, Landing Page, y UX/UI) tiene sus propios líderes y colaboradores para cada Bounded Context. La matriz de liderazgo y colaboración (LACX) define las responsabilidades específicas por plataforma, asegurando autonomía y especialización en cada tecnología.
</p>

<table width="100%">
    <tr>
        <th>Team Member (Last Name, First Name)</th>
        <th>GitHub Username</th>
        <th>A1 – Device Management BC (Backend) (L/C)</th>
        <th>A2 – Device Management BC (Web App) (L/C)</th>
        <th>A3 – Device Management BC (Mobile) (L/C)</th>
        <th>A4 – Driver Engagement BC (Backend) (L/C)</th>
        <th>A5 – Driver Engagement BC (Web App) (L/C)</th>
        <th>A6 – Driver Engagement BC (Mobile) (L/C)</th>
        <th>A7 – Workshop Operations BC (Backend) (L/C)</th>
        <th>A8 – Workshop Operations BC (Web App) (L/C)</th>
        <th>A9 – Workshop Operations BC (Mobile) (L/C)</th>
        <th>A10 – Security BC (Backend) (L/C)</th>
        <th>A11 – Security BC (Web App) (L/C)</th>
        <th>A12 – Security BC (Mobile) (L/C)</th>
        <th>A13 – Analytics BC (Backend) (L/C)</th>
        <th>A14 – Analytics BC (Web App) (L/C)</th>
        <th>A15 – Analytics BC (Mobile) (L/C)</th>
        <th>A16 – Landing Page Segmentation (L/C)</th>
        <th>A17 – Landing Page External Links (L/C)</th>
        <th>A18 – Landing Page Footer Enhancement (L/C)</th>
        <th>A19 – UX/UI Wireframe & Prototyping (L/C)</th>
    </tr>
    <tr>
        <td>Gonzalo Andre Zavala Quedena</td>
        <td>GonzaloQu3dena</td>
        <td>A1 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A4 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A7 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A10 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A13 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Hardie Alfonso Holguin Gamarra</td>
        <td>HOLGUINUPC</td>
        <td>A1 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A4 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A7 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A10 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A13 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>A17 (L)</td>
        <td>A18 (L)</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Janover Gonzalo Saldaña Vela</td>
        <td>JanoverSaldana</td>
        <td>-</td>
        <td>A2 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A5 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A8 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A11 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A14 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Javier Sharvel Irigoyen Matos</td>
        <td>sharvel-irigoyen</td>
        <td>-</td>
        <td>A2 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A5 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A8 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A11 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A14 (C)</td>
        <td>-</td>
        <td>A16 (L)</td>
        <td>A17 (C)</td>
        <td>-</td>
        <td>-</td>
    </tr>
    <tr>
        <td>Javier Kenyi Mendoza Solis</td>
        <td>Kenyi-Mendoza-Solis</td>
        <td>-</td>
        <td>-</td>
        <td>A3 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A6 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A9 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A12 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>A15 (L)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>A19 (L)</td>
    </tr>
    <tr>
        <td>Anaely Zarely Burga Loarte</td>
        <td>userxx1000</td>
        <td>-</td>
        <td>-</td>
        <td>A3 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A6 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A9 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A12 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A15 (C)</td>
        <td>A16 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A19 (C)</td>
    </tr>
    <tr>
        <td>Gustavo Jandroel Aguirre Rodríguez</td>
        <td>Jandroel</td>
        <td>-</td>
        <td>-</td>
        <td>A3 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A6 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A9 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A12 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>A15 (C)</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
</table>

#### 6.2.2.3. Sprint Backlog 2
#### 6.2.2.4. Development Evidence for Sprint Review
#### 6.2.2.5. Testing Suite Evidence for Sprint Review
#### 6.2.2.6. Execution Evidence for Sprint Review
#### 6.2.2.7. Services Documentation Evidence for Sprint Review
#### 6.2.2.8. Software Deployment Evidence for Sprint Review
#### 6.2.2.9. Team Collaboration Insights during Sprint