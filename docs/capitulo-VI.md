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
        El Sprint 1 consiguió desplegar la Web de Negocio (landing page) y la Aplicación Web con las funcionalidades core de gestión vehicular, lo que permitió validar los flujos principales de UX e interacción (registro, inicio de sesión, navegación y pantallas clave). No se integró backend durante esta iteración; los flujos funcionan con datos locales o simulados. A nivel de producto se entregó una landing bilingüe y responsive, navegación y secciones informativas; la Web App incluye UI para registro, login, gestión de vehículos, órdenes de servicio y agendamiento básico. El equipo resaltó como puntos fuertes la velocidad para alcanzar un baseline visual sólido y la claridad en la arquitectura inicial; como riesgos identificados señalaron el trabajo directo en main, concentración de commits en pocos miembros, y la ausencia de pruebas automatizadas. El Product Owner valoró positivamente la calidad visual y la validación temprana de la experiencia, pero pidió mayor integración entre componentes (backend), mejor segmentación de la landing para usuarios/mecánicos, correcciones de localización y terminología (p. ej. "History" → "Service Orders"), y priorizar pruebas y despliegues controlados. Las acciones acordadas fueron activar GitFlow y protección de ramas, definir Definition of Done que incluya revisión de código y tests, planificar la integración de backend en el próximo sprint y redistribuir capacidad para balancear la carga de trabajo.
      </td>
    </tr> <tr>
        <td>Sprint 1 - Retrospective Summary</td>
        <td align="justify">
          <p>Durante el primer sprint solo se logró el despliegue de la Landing Page y de la aplicación web con las funciones core de negocio sin integrar la autenticación, trabajando con datos locales y sin consumos de servicios externos; esto permitió validar visualmente la interfaz y los flujos básicos, sin embargo la forma de trabajo mostró debilidades que impactaron la ejecución, especialmente la organización del tiempo ya que varios integrantes atendieron otros desarrollos paralelos provocando retrasos y reasignaciones, el trabajo directo en <code>main</code> en lugar de usar ramas de feature generó conflictos y hotfixes que consumieron tiempo de revisión, y la fricción al integrar cambios; como mejoras accionables proponemos adoptar GitFlow y proteger las ramas principales con PRs obligatorios y plantilla de revisión, definir la capacidad realista de cada integrante y registrar la disponibilidad en el board para evitar solapamientos, establecer un daily de 15 minutos enfocado en bloqueos con un facilitador de sprint que haga seguimiento, introducir una Definition of Done que incluya revisión de código y programar una retrospectiva formal al cierre del Sprint 2 con responsables asignados para cada acción y métricas de verificación.</p>
        </td>
    </tr>
    <tr>
        <td colspan="2">Sprint Goal & User Stories</td>
        <td></td>
    </tr>
    <tr>
        <td>Sprint 2 Goal</td>
        <td align="justify">
        Nuestro enfoque está en habilitar que conductores y mecánicos gestionen sus cuentas, vehículos y mantenimientos desde la plataforma SafeCar. En este sprint implementamos funciones de registro, inicio de sesión, actualización de perfil, vinculación de vehículos, alertas en tiempo real y programación de citas entre conductor y taller.
        <br><br>
        Creemos que esto permite que los conductores mantengan actualizada la información de sus autos, reciban avisos de fallas o mantenimientos a tiempo y soliciten atención sin depender de llamadas o intermediarios; y que los mecánicos organicen mejor su carga de trabajo, confirmen citas y actualicen diagnósticos con datos reales del vehículo.
        <br><br>
        Esto se confirmará cuando los usuarios puedan completar el registro y autenticación en menos de tres clics, vincular su vehículo al sistema en menos de dos minutos, y gestionar o modificar una cita con un máximo de cinco interacciones dentro de la aplicación. Además, la plataforma deberá mantener una disponibilidad mínima del 95 %, los flujos principales (registro, inicio de sesión, vinculación de vehículo y agendamiento) deberán alcanzar una tasa de éxito superior al 90 %, y las encuestas internas de experiencia de usuario deberán reflejar al menos un 85 % de satisfacción en criterios de rapidez, facilidad de uso y utilidad de las alertas recibidas.
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
Para el Sprint 2, el equipo organizó el trabajo bajo un enfoque de Domain-Driven Design, donde cada Bounded Context se implementa siguiendo los principios de autonomía de dominio y especialización técnica. La matriz de liderazgo y colaboración (LACX) define claramente las responsabilidades por Bounded Context, asegurando que cada contexto acotado mantenga su integridad conceptual mientras permite la colaboración efectiva entre miembros del equipo.
</p>

<table width="100%">
    <tr>
        <th>Team Member (Last Name, First Name)</th>
        <th>GitHub Username</th>
        <th>Device Management BC (L/C)</th>
        <th>Workshop Operations and Telemetry Processing BC (L/C)</th>
        <th>Communication BC (L/C)</th>
        <th>Analytics and Recommendations BC (L/C)</th>
        <th>Subscription and Payments BC (L/C)</th>
        <th>IAM BC (L/C)</th>
        <th>Landing Page Improvements (L/C)</th>
        <th>UX/UI Design (L/C)</th>
    </tr>
    <tr>
        <td>Janover Gonzalo Saldaña Vela</td>
        <td>JanoverSaldana</td>
        <td align="center">L</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
    </tr>
    <tr>
        <td>Hardie Alfonso Holguin Gamarra</td>
        <td>HOLGUINUPC</td>
        <td align="center">C</td>
        <td align="center">L</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">L</td>
        <td align="center">-</td>
    </tr>
    <tr>
        <td>Javier Kenyi Mendoza Solis</td>
        <td>Kenyi-Mendoza-Solis</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">L</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">L</td>
    </tr>
    <tr>
        <td>Javier Sharvel Irigoyen Matos</td>
        <td>sharvel-irigoyen</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">L</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
    </tr>
    <tr>
        <td>Gustavo Jandroel Aguirre Rodríguez</td>
        <td>Jandroel</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">L</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
    </tr>
    <tr>
        <td>Anaely Zarely Burga Loarte</td>
        <td>userxx1000</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">C</td>
    </tr>
    <tr>
        <td>Gonzalo Andre Zavala Quedena</td>
        <td>GonzaloQu3dena</td>
        <td align="center">-</td>
        <td align="center">C</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">L</td>
        <td align="center">-</td>
        <td align="center">-</td>
    </tr>
</table>

#### 6.2.2.3. Sprint Backlog 2
<p align="justify">

</p>

<table width="100%">
    <tr>
        <th colspan="2">Sprint #</th>
        <th colspan="6">Sprint 2</th>
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
        <td rowspan="9">TS101</td>
        <td rowspan="9">Como desarrollador, deseo registrar un conductor a través de la API, para que el sistema pueda gestionar dinámicamente las cuentas de los conductores y los registros de autenticación.</td>
        <td>T1</td>
        <td>Implementar interfaz UserCommandService.</td>
        <td>Implementar interfaz UserCommandService que encapsule los handlers donde cada uno como argumento reciba el command creado.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T2</td>
        <td>Implementar UserCommandServiceImpl.</td>
        <td>Implementar UserCommandServiceImpl quien implementa los handlers de la interfaz UserCommandService.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T3</td>
        <td>Implementar endpoint POST /api/v1/signup.</td>
        <td>Implementar endpoint POST /api/v1/signup para registro de conductor.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T4</td>
        <td>Validar unicidad de email.</td>
        <td>Validar unicidad de email en el registro de conductor.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T5</td>
        <td>Crear Aggregate "User".</td>
        <td>Crear Aggregate "User" con los campos email, password y rol de conductor.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T6</td>
        <td>Crear valueobject para Email.</td>
        <td>Crear valueobject para la propiedad Email.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T7</td>
        <td>Implementar valueobject Role.</td>
        <td>Implementar valueobject Role como enum expresando los roles del negocio.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T8</td>
        <td>Implementar entidad Roles.</td>
        <td>Implementar entidad Roles para tabla de evaluación.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T9</td>
        <td>Implementar comando SignUpUserCommand.</td>
        <td>Implementar comando SignUpUserCommand para registro de usuario.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US105</td>
        <td rowspan="4">Como visitante deseo leer opiniones de usuarios sobre SafeCar para confiar en la plataforma antes de registrarme.</td>
        <td>T10</td>
        <td>Crear el mockup de la sección o página donde se mostrarán las opiniones.</td>
        <td>Crear el mockup de la sección o página donde se mostrarán las opiniones. Debe incluir elementos como la foto/iniciales del usuario, su nombre, la calificación y el texto de la opinión.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T11</td>
        <td>Implementar forma sencilla de navegar entre opiniones.</td>
        <td>Si hay muchas opiniones, implementar una forma sencilla de navegar entre ellas o un mecanismo que muestre una selección aleatoria o las mejor valoradas.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T12</td>
        <td>Implementar visualización de calificación global promedio.</td>
        <td>Implementar una visualización destacada que muestre la calificación global promedio basada en todas las opiniones.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T13</td>
        <td>Configurar permisos de la página para usuarios sin registrar.</td>
        <td>Configurar los permisos de la página para que el contenido sea accesible a usuarios sin registrar, cumpliendo con el objetivo de la historia de usuario.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US108</td>
        <td rowspan="4">Como visitante deseo enviar mis datos de contacto y un mensaje desde la Web de Negocio para recibir más información o resolver dudas.</td>
        <td>T14</td>
        <td>Diseñar mockup del formulario de contacto.</td>
        <td>Diseñar mockup del formulario de contacto de la Web de Negocio incluyendo campos obligatorios para: Nombre, Correo Electrónico, Teléfono y un área para el Mensaje.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T15</td>
        <td>Implementar la sección de contacto en Web de Negocio.</td>
        <td>Implementar la sección de contacto en Web de Negocio basado en mockup.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T16</td>
        <td>Implementar reglas de validación para campos.</td>
        <td>Implementar reglas de validación para asegurar que los campos: nombre, email y mensaje, tengan un formato correcto y no estén vacíos.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T17</td>
        <td>Mostrar mensaje de envío exitoso.</td>
        <td>Mostrar mensaje envío de datos de Contacto exitoso en la Web de Negocio.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
     <tr>
        <td>US112</td>
        <td>Como visitante deseo que la Aplicación Web se vea bien en cualquier dispositivo para acceder comodamente</td>
        <td>T18</td>
        <td>Implementación responsive de la aplicación web</td>
        <td>Implementación responsive de la aplicación web</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="6">US201</td>
        <td rowspan="6">Como conductor, deseo iniciar sesión con mis credenciales registradas en la aplicación móvil, para empezar con el monitoreo de mis vehículos.</td>
        <td>T19</td>
        <td>Implementar navegación post-login (móvil).</td>
        <td>Implementar la navegación de éxito post-login en la aplicación móvil. Al recibir los tokens, guardarlos y navegar a la pantalla de monitoreo de vehículos.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T20</td>
        <td>Implementar lógica "mantener sesión activa" (móvil).</td>
        <td>Implementar la lógica de "mantener sesión activa" en la aplicación móvil, incluyendo el almacenamiento seguro del refresh token si la opción es seleccionada.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T21</td>
        <td>Diseñar mockup de pantalla "Iniciar sesión" (móvil).</td>
        <td>Diseñar mockup de la pantalla "Iniciar sesión (SignIn)" de la aplicación móvil. Debe incluir los campos: correo electrónico, contraseña y la opción de "mantener sesión activa".</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T22</td>
        <td>Implementar pantalla "Iniciar sesión" (móvil).</td>
        <td>Implementar la pantalla "Iniciar sesión (SignIn)" en la aplicación móvil (componente visual). Crear el componente con los campos de entrada y el botón, basándose en el diseño.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T23</td>
        <td>Implementar manejo visual de errores (móvil).</td>
        <td>Implementar el manejo visual de errores por credenciales inválidas en la aplicación móvil. Mostrar el mensaje de error de forma clara al recibir la respuesta de credenciales incorrectas del backend.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T24</td>
        <td>Implementar manejo visual de errores (móvil).</td>
        <td>Implementar el manejo visual de errores por credenciales inválidas. Mostrar el mensaje de error de forma clara al recibir la respuesta de credenciales inválidas del backend.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="5">US202</td>
        <td rowspan="5">Como conductor, deseo registrarme en la aplicación móvil, para que pueda comenzar con el inicio de sesión.</td>
        <td>T25</td>
        <td>Diseñar mockup "Registro (SignUp)" (móvil).</td>
        <td>Diseñar mockup de la pantalla "Registro (SignUp)" de la aplicación móvil. Debe incluir los campos: nombre, correo electrónico y contraseña.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T26</td>
        <td>Implementar pantalla "Registro (SignUp)" (móvil).</td>
        <td>Implementar la pantalla "Registro (SignUp)" en la aplicación móvil (componente visual). Crear el componente móvil con los campos de entrada y el botón de regi...</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T27</td>
        <td>Implementar lógica de registro (SignUp) (móvil).</td>
        <td>Implementar la lógica de registro (SignUp) en la aplicación móvil, incluyendo validación de formato local de los campos y la llamada a la API de registro, y manejo de los estados de carga y error.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T28</td>
        <td>Implementar navegación post-registro (móvil).</td>
        <td>Implementar la navegación de éxito post-registro en la aplicación móvil. Al recibir una confirmación de registro exitoso del backend, navegar automáticamente a la pantalla de Login (o al inicio de sesión automático).</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T29</td>
        <td>Implementar manejo de errores de API de registro (móvil).</td>
        <td>Implementar el manejo de errores de la API de registro en la aplicación móvil. Mostrar un mensaje al usuario si el correo electrónico ya está registrado u otro error de negocio devuelto por el backend.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US203</td>
        <td rowspan="4">Como conductor, deseo restablecer mi contraseña desde la aplicación móvil, para que pueda recuperar el acceso a mi cuenta cuando haya olvidado mis credenciales.</td>
        <td>T30</td>
        <td>Diseñar mockup "Olvidé mi contraseña" (móvil).</td>
        <td>Diseñar mockup de la pantalla "Olvidé mi contraseña" (solicitud de correo) de la aplicación móvil. Debe incluir el formulario con el campo de entrada del correo electrónico y el botón de envío.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T31</td>
        <td>Implementar pantalla "Olvidé mi contraseña" (móvil).</td>
        <td>Implementar la pantalla "Olvidé mi contraseña" (solicitud de correo) en la aplicación móvil. Crear el componente móvil con el campo de entrada y el botón de envío.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T32</td>
        <td>Implementar lógica de solicitud de enlace (móvil).</td>
        <td>Implementar la lógica de solicitud de enlace de recuperación en la aplicación móvil, incluyendo la validación de formato del email y la llamada a la API para solicitar el enlace, manejando los estados de carga y error.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T33</td>
        <td>Implementar lógica de deep link (móvil).</td>
        <td>Implementar la lógica de deep link en la aplicación móvil. Al abrir la app con el deep link, validar el token recibido en el backend y, si es válido, navegar al formulario de nueva contraseña.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="5">US204</td>
        <td rowspan="5">Como conductor, deseo cerrar sesión en la aplicación móvil para proteger mi cuenta cuando termino de usar la aplicación.</td>
        <td>T34</td>
        <td>Implementar botón "Cerrar Sesión" (móvil).</td>
        <td>Implementar el botón "Cerrar Sesión" en la aplicación móvil (dentro de pantalla de Perfil).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T35</td>
        <td>Implementar modal de confirmación (móvil).</td>
        <td>Implementar el modal de confirmación "¿Estás seguro que deseas cerrar sesión?" antes de finalizar la sesión.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T36</td>
        <td>Implementar lógica de cierre de sesión (móvil).</td>
        <td>Implementar la lógica completa de cierre de sesión seguro en la aplicación móvil.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T37</td>
        <td>Añadir eliminación de tokens (móvil).</td>
        <td>Añadir la eliminación de tokens de sesión del almacenamiento local del dispositivo móvil (al completar el cierre).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T38</td>
        <td>Navegar a pantalla de Login (móvil).</td>
        <td>Navegar a la pantalla de Login al completar exitosamente el proceso de cierre de sesión.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US205</td>
        <td rowspan="4">Como mecánico de taller, deseo mantener mi sesión activa en la aplicación web luego de estar inactivo, para evitar constantes inicios de sesión.</td>
        <td>T39</td>
        <td>Implementar opción "Mantener sesión activa" (web).</td>
        <td>Implementar la opción "Mantener sesión activa" (checkbox) en la página de login de la aplicación web.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T40</td>
        <td>Implementar lógica de verificación de sesión (web).</td>
        <td>Implementar la lógica de verificación de sesión al cargar la aplicación web (verificar la existencia y validez de la sesión/token).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T41</td>
        <td>Implementar renovación de sesión (web).</td>
        <td>Implementar la renovación de sesión en la aplicación web. Usar el refresh token almacenado para obtener un nuevo access token de forma transparente al cargar la aplicación.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T42</td>
        <td>Implementar almacenamiento seguro de refresh token (web).</td>
        <td>Implementar el almacenamiento seguro del refresh token en el navegador al iniciar sesión con la opción "mantener activa".</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US206</td>
        <td rowspan="4">Como conductor, deseo modificar mi perfil (nombre, apellido, contraseña) en la aplicación móvil para mantener mi información al día.</td>
        <td>T43</td>
        <td>Implementar la lógica de carga de datos del perfil.</td>
        <td>Implementar la lógica de carga de datos del perfil en la aplicación móvil. Al cargar la página, recuperar y mostrar los datos del perfil del conductor desde la API.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T44</td>
        <td>Diseñar mockup "Editar Perfil" (móvil).</td>
        <td>Diseñar mockup de la pantalla "Editar Perfil" de la aplicación móvil. Debe mostrar los campos actuales y el formulario de edición.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T45</td>
        <td>Implementar pantalla "Editar Perfil" (móvil).</td>
        <td>Implementar la pantalla "Editar Perfil" (Componente Visual). Crear el componente móvil con los campos de perfil y los botones de guardar/cancelar.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T46</td>
        <td>Implementar validaciones de formato (móvil).</td>
        <td>Implementar las validaciones de formato de campos de perfil del conductor (ej., campos obligatorios) antes del envío a la API.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US207</td>
        <td rowspan="3">Como mecánico de taller, deseo registrarme en la aplicación web, para que pueda con el inicio de sesión.</td>
        <td>T47</td>
        <td>Diseñar mockup "Registro (SignUp)" (web).</td>
        <td>Diseñar mockup de la página "Registro (SignUp)" de la aplicación web. Debe incluir los campos: nombre, correo electrónico y contraseña.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T48</td>
        <td>Implementar página "Registro (SignUp)" (web).</td>
        <td>Implementar la página "Registro (SignUp)" en la aplicación web (componente visual). Crear el componente web con los campos de entrada y el botón de registro.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T49</td>
        <td>Implementar lógica de registro (SignUp) (web).</td>
        <td>Implementar la lógica de registro (SignUp) en la aplicación web, incluyendo validación de formato local de los campos y la llamada a la API de registro, y manejo de los estados de carga y error.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="5">US208</td>
        <td rowspan="5">Como mecánico de taller, deseo iniciar sesión con mis credenciales registradas en la aplicación web, para empezar con la gestión de mis clientes y sus vehículos.</td>
        <td>T50</td>
        <td>Implementar mensaje de error (web).</td>
        <td>Implementar mensaje de error durante SignIn por credenciales inválidas en la aplicación web. Mostrar el mensaje de error de forma clara al recibir la respuesta del backend.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T51</td>
        <td>Implementar lógica "mantener sesión activa" (web).</td>
        <td>Implementar la lógica de "mantener sesión activa" en la aplicación web. Incluye el almacenamiento seguro del refresh token si la opción es seleccionada.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T52</td>
        <td>Diseñar mockup "Iniciar sesión (SignIn)" (web).</td>
        <td>Diseñar mockup de la página "Iniciar sesión (SignIn)" de la aplicación web. Debe incluir los campos: correo electrónico, contraseña y la opción de "mantener sesión activa".</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T53</td>
        <td>Implementar página "Iniciar sesión (SignIn)" (web).</td>
        <td>Implementar la página "Iniciar sesión (SignIn)" en la aplicación web (componente visual). Crear el componente web con los campos de entrada y el botón, basándose en el diseño.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T54</td>
        <td>Implementar lógica de inicio de sesión (web).</td>
        <td>Implementar la lógica de inicio de sesión (SignIn) en la aplicación web, incluyendo validación de formato local de los campos y la llamada a la API de autenticación.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="6">US209</td>
        <td rowspan="6">Como conductor, deseo restablecer mi contraseña desde la aplicación móvil, para que pueda mantener la seguridad de mi cuenta de forma proactiva.</td>
        <td>T55</td>
        <td>Diseñar mockup "Cambio de contraseña" (móvil).</td>
        <td>Diseñar mockup de la pantalla "Cambio de contraseña" de la aplicación móvil. Debe incluir los tres campos de entrada: contraseña actual, nueva contraseña y confirmar nueva contraseña.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T56</td>
        <td>Implementar pantalla "Cambio de contraseña" (móvil).</td>
        <td>Implementar la pantalla "Cambio de contraseña" en la aplicación móvil. Crear el componente móvil con sus tres campos y validaciones de formato locales.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T57</td>
        <td>Implementar lógica de envío (móvil).</td>
        <td>Implementar la lógica de envío para el cambio de contraseña en la aplicación móvil, incluyendo validación de coincidencia de la nueva contraseña y envío de la solicitud al endpoint del backend.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T58</td>
        <td>Implementar manejo visual de errores (móvil).</td>
        <td>Implementar el manejo visual de errores en la aplicación móvil. Mostrar un mensaje de error si el backend informa que la "contraseña actual" es incorrecta o que la nueva contraseña no cumple con los requisitos.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T59</td>
        <td>Implementar confirmación de éxito (móvil).</td>
        <td>Implementar la confirmación de éxito en la aplicación móvil. Al recibir la confirmación de éxito del backend, mostrar un mensaje de éxito y redirigir a la pantalla de perfil o configuración.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T60</td>
        <td>Implementar invalidación de token (móvil).</td>
        <td>Implementar la invalidación y eliminación del token de sesión móvil después de un cambio de contraseña exitoso, forzando al conductor a iniciar sesión con la nueva contraseña.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US210</td>
        <td rowspan="4">Como mecánico de taller, deseo cerrar sesión en la aplicación web para proteger mi cuenta cuando termino de usar la aplicación.</td>
        <td>T61</td>
        <td>Implementar botón "Cerrar Sesión" (web).</td>
        <td>Implementar el botón "Cerrar Sesión" en la aplicación web (dentro de pantalla de Perfil).</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T62</td>
        <td>Implementar lógica de cierre de sesión (web).</td>
        <td>Implementar la lógica completa de cierre de sesión seguro en la aplicación web.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T63</td>
        <td>Añadir eliminación de tokens (web).</td>
        <td>Añadir la eliminación de tokens de sesión (JWT y refresh) del almacenamiento local del navegador.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T64</td>
        <td>Navegar a página de Login (web).</td>
        <td>Navegar a la página de Login al completar exitosamente el proceso de cierre de sesión.</td>
        <td></td>
        <td>GQ</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US211</td>
        <td rowspan="4">Como mecánico de taller, deseo modificar mi perfil (nombre, apellido, contraseña) en la aplicación web para mantener mi información al día.</td>
        <td>T65</td>
        <td>Implementar pantalla "Editar Perfil" (web).</td>
        <td>Implementar la pantalla "Editar Perfil" (Componente Visual). Crear el componente web con los campos de perfil y los botones de guardar/cancelar.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T66</td>
        <td>Implementar lógica de carga de datos (web).</td>
        <td>Implementar la lógica de carga de datos del perfil en la aplicación web. Al cargar la página, recuperar y mostrar los datos del perfil del mecánico desde la API.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T67</td>
        <td>Implementar validaciones de formato (web).</td>
        <td>Implementar las validaciones de formato de campos de perfil del mecánico (ej., campos obligatorios) antes del envío a la API.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T68</td>
        <td>Diseñar mockup "Editar Perfil" (web).</td>
        <td>Diseñar mockup de la página "Editar Perfil" de la aplicación web. Debe mostrar el formulario con los campos actuales del mecánico y el formulario de edición.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US301</td>
        <td rowspan="3">Como conductor, deseo recibir alertas en el móvil cuando el sistema detecta problemas, para actuar de inmediato y evitar daños mayores.</td>
        <td>T69</td>
        <td>Diseñar el mockup de las notificaciones emergentes.</td>
        <td>Diseñar el mockup de las notificaciones emergentes y visuales de alertas en la aplicación móvil, diferenciando tipos de alerta (crítica, preventiva, informativa).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T70</td>
        <td>Implementar la lógica de recepción y manejo de alertas.</td>
        <td>Implementar la lógica de recepción y manejo de alertas en la aplicación móvil mediante Firebase Cloud Messaging (FCM).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T71</td>
        <td>Implementar la visualización en tiempo real.</td>
        <td>Implementar la visualización en tiempo real de alertas recibidas, actualizando el estado en la interfaz móvil.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="5">US302</td>
        <td rowspan="5">Como conductor, deseo revisar el reporte de alertas recibidas, para entender patrones de fallas y planificar mantenimientos.</td>
        <td>T72</td>
        <td>Mostrar mensaje "No hay alertas registradas".</td>
        <td>Mostrar mensaje "No hay alertas registradas" cuando la lista esté vacía en la UI de la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T73</td>
        <td>Mostrar detalle de la alerta seleccionada.</td>
        <td>Mostrar detalle de la alerta seleccionada en la UI de la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T74</td>
        <td>Diseñar el mockup de la pantalla "Historial de alertas".</td>
        <td>Diseñar el mockup de la pantalla "Historial de alertas" en la aplicación móvil, mostrando tipo de alerta, fecha, severidad e icono asociado.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T75</td>
        <td>Implementar la pantalla "Historial de alertas".</td>
        <td>Implementar la pantalla "Historial de alertas" en la aplicación móvil, utilizando scroll dinámico para listar alertas registradas.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T76</td>
        <td>Implementar la lógica de carga y visualización.</td>
        <td>Implementar la lógica de carga y visualización de alertas almacenadas localmente, asegurando persistencia temporal mediante SQLite en la aplicacióm móvil.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US303</td>
        <td rowspan="3">Como conductor, deseo definir mis preferencias de notificaciones, para recibir solo las alertas relevantes en la aplicación móvil.</td>
        <td>T77</td>
        <td>Diseñar el mockup de la pantalla "Configuración de notificaciones".</td>
        <td>Diseñar el mockup de la pantalla "Configuración de notificaciones", incluyendo interruptores o switches por tipo de alerta (crítica, preventiva, general).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T78</td>
        <td>Implementar la interfaz de configuración.</td>
        <td>Implementar la interfaz de configuración en la aplicación móvil (componente visual), con switches y guardado automático del estado.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T79</td>
        <td>Implementar la funcionalidad para guardar las preferencias.</td>
        <td>Implementar la funcionalidad para guardar las preferencias de notificaciones del usuario en la aplicación móvil.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="2">US304</td>
        <td rowspan="2">Como conductor, deseo ver en la aplicación móvil el diagnóstico de mi vehículo, para conocer su estado actual y tomar decisiones rápidas.</td>
        <td>T80</td>
        <td>Diseñar mockup "Diagnóstico del Vehículo" (móvil).</td>
        <td>Diseñar el mockup de la pantalla "Diagnóstico del Vehículo" de la aplicación móvil. Debe mostrar indicadores visuales (tarjetas o iconos) con el estado de batería, motor, frenos, neumáticos y otros sensores relevantes.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T81</td>
        <td>Implementar interfaz de diagnóstico (móvil).</td>
        <td>Implementar la interfaz de diagnóstico en la aplicación móvil (componente visual). Incluir gráficos, colores e iconos diferenciados por estado (normal, advertencia, crítico).</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US401</td>
        <td rowspan="3">Como conductor, deseo ver el historial de mantenimientos en la aplicación, para analizar la frecuencia y costos de mis reparaciones.</td>
        <td>T82</td>
        <td>Diseñar pantalla "Historial de Mantenimientos" (móvil).</td>
        <td>Diseñar en la aplicación móvil la pantalla de "Historial de Mantenimientos" que presente los registros con fecha, servicio realizado y costo, utilizando la información del bounded context Workshop Operations.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T83</td>
        <td>Implementar botón "Filtrar" (móvil).</td>
        <td>Implementar el botón "Filtrar" en el listado de mantenimientos con las opciones para ordenar por fecha y tipo de servicio.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T84</td>
        <td>Desarrollar pantalla "Sin registros" (móvil).</td>
        <td>Desarrollar la pantalla de "Sin registros" con su respectivo mensaje en el caso de que no exista registro alguno.</td>
        <td></td>
        <td>P</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US402</td>
        <td rowspan="3">Como conductor, deseo recibir recordatorios de próximos mantenimientos, para no olvidar servicios importantes de mi vehículo.</td>
        <td>T85</td>
        <td>Diseñar el mockup de la sección "Recordatorios".</td>
        <td>Diseñar el mockup de la sección "Recordatorios" en la aplicación móvil. Debe incluir fechas de mantenimiento estimadas, kilometraje y opciones para activar o desactivar alertas.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T86</td>
        <td>Implementar la lógica de notificaciones locales y push.</td>
        <td>Implementar la lógica de notificaciones locales y push (Firebase Cloud Messaging) en la aplicación móvil para el envío de recordatorios.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T87</td>
        <td>Implementar la funcionalidad para registrar, listar y eliminar.</td>
        <td>Implementar la funcionalidad para registrar, listar y eliminar recordatorios de mantenimiento en la aplicación móvil, asegurando que el usuario pueda gestionarlos desde la interfaz.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US601</td>
        <td rowspan="3">Como mecánico de taller, deseo visualizar la agenda en vista diaria y semanal, para organizar el trabajo del equipo.</td>
        <td>T88</td>
        <td>Crear la interfaz de calendario (vista diaria).</td>
        <td>Crear la interfaz de calendario que muestre las citas/órdenes de servicio en un formato de línea de tiempo por horas (8:00 a 18:00) para el día seleccionado.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T89</td>
        <td>Crear la interfaz de calendario (vista semanal).</td>
        <td>Crear la interfaz de calendario que muestre los 7 días de la semana en columnas, visualizando la carga de trabajo y disponibilidad de un vistazo general.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T90</td>
        <td>Desarrollar los botones para cambiar entre vistas.</td>
        <td>Desarrollar los botones para cambiar entre las vistas Diaria y Semanal, además de flechas para navegar al día/semana anterior y siguiente.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US609</td>
        <td rowspan="3">Como mecánico de taller, deseo ver cantidad total de citas por estado, para tener una vista rápida de la carga de trabajo.</td>
        <td>T91</td>
        <td>Identificar y listar estados relevantes.</td>
        <td>Identificar y listar solo los estados relevantes para la carga de trabajo activa del mecánico.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T92</td>
        <td>Confirmar acceso por rol.</td>
        <td>Confirmar que solo los usuarios con el rol de "Mecánico de Taller" puedan acceder a esta vista de carga de trabajo.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T93</td>
        <td>Configurar actualización dinámica.</td>
        <td>Configurar el componente para que los conteos se actualicen dinámicamente o con una frecuencia alta para reflejar los cambios de estado.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="6">US701</td>
        <td rowspan="6">Como conductor, deseo registrar uno de mis vehículos, para asociarlos a diagnósticos y mantenimientos.</td>
        <td>T94</td>
        <td>Diseñar la vista de registro de vehículo.</td>
        <td>Diseñar en la aplicación móvil la vista de registro de vehículo con campos como placa, marca, modelo y año, siguiendo las reglas de validación definidas por el bounded context Device Management.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T95</td>
        <td>Implementar el formulario de registro.</td>
        <td>Implementar el formulario de registro en la app móvil para capturar los datos del vehículo y validarlos antes de enviarlos, mostrando mensajes claros ante errores o campos vacíos.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T96</td>
        <td>Implementar validación de placa duplicada.</td>
        <td>Implementar en la aplicación móvil la validación de placa duplicada, mostrando un mensaje flotante que indique "La placa XXXXXX ya está registrada" cuando el usuario intente volver a registrarla.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T97</td>
        <td>Mostrar mensaje de éxito al registrar.</td>
        <td>Mostrar mensaje de éxito al registrar el vehículo correctamente en la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T98</td>
        <td>Mostrar mensaje de error si la placa ya está registrada.</td>
        <td>Mostrar mensaje de error si la placa ya está registrada en la UI de la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T99</td>
        <td>Redirigir UI a la lista de vehículos.</td>
        <td>Redirigir UI a la lista de vehículos tras registro exitoso en la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US702</td>
        <td rowspan="3">Como conductor, deseo editar la información de mis vehículos o eliminarlos, para mantener mi registro actualizado.</td>
        <td>T100</td>
        <td>Diseñar vista para editar vehículo (móvil).</td>
        <td>Diseñar en la aplicación móvil la vista para editar la información de un vehículo, permitiendo modificar campos como placa, marca, modelo y año, siguiendo las reglas de validación definidas por el BC Device Management.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T101</td>
        <td>Diseñar acción de eliminar vehículo (móvil).</td>
        <td>Diseñar en la aplicación móvil la acción de eliminar un vehículo, incluyendo un mensaje de confirmación antes de realizar la acción y la desvinculación automática de citas futuras.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T102</td>
        <td>Implementar mensajes flotantes (móvil).</td>
        <td>Implementar en la aplicación móvil los mensajes flotantes que confirmen al usuario que las acciones de editar o eliminar un vehículo se han realizado correctamente.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US703</td>
        <td rowspan="4">Como conductor, deseo ver una lista de mis vehículos registrados, para seleccionar con cuál trabajar.</td>
        <td>T103</td>
        <td>Implementar la actualización automática de la lista.</td>
        <td>Implementar la actualización automática de la lista en la aplicación móvil después de registrar, editar o eliminar un vehículo.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T104</td>
        <td>Diseñar la vista principal "Mis vehículos".</td>
        <td>Diseñar en la aplicación móvil la vista principal "Mis vehículos" que muestre una lista de los vehículos registrados con su placa, marca y modelo.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T105</td>
        <td>Implementar mensaje "Sin vehículos".</td>
        <td>Implementar en la vista "Mis vehículos" el mensaje "Sin vehículos" indicando que no tiene vehículos registrados en caso de que no exista registro alguno.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T106</td>
        <td>Implementar opción de invitar a registrar.</td>
        <td>Implementar en el mensaje de "Sin vehículos" la opción que invite al usuario a realizar su primer registro redirigiendo a la vista correspondiente del bounded context Device Management.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US704</td>
        <td rowspan="3">Como conductor, deseo vincular el dispositivo IoT a un vehículo específico para que los diagnósticos y alertas correspondan al auto correcto.</td>
        <td>T107</td>
        <td>Diseñar vista para vincular IoT.</td>
        <td>Diseñar en la aplicación móvil la vista para vincular un dispositivo IoT a un vehículo, incluyendo el campo para ingresar el código del dispositivo según las reglas del bounded context Device Management.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T108</td>
        <td>Implementar mensaje de confirmación.</td>
        <td>Implementar en la aplicación móvil el mensaje de confirmación que se muestra cuando el dispositivo IoT se asocia correctamente al vehículo.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T109</td>
        <td>Implementar mensaje de error.</td>
        <td>Implementar en la aplicación móvil el mensaje de error que se muestra cuando el dispositivo IoT ya está vinculado a otro vehículo.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US801</td>
        <td rowspan="3">Como conductor, deseo ver mi taller asignado y sus horarios compatibles, para elegir una fecha y hora.</td>
        <td>T110</td>
        <td>Diseñar vista "Mi Taller".</td>
        <td>Diseñar en la aplicación móvil la vista "Mi Taller" mostrando nombre, dirección, teléfono y datos básicos del taller asignado.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T111</td>
        <td>Implementar visualización de horarios.</td>
        <td>Implementar en la aplicación móvil la visualización de horarios compatibles del taller según la fecha seleccionada obtenidos desde el bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T112</td>
        <td>Implementar mensaje "Sin horarios compatibles".</td>
        <td>Implementar en la app móvil el mensaje "Sin horarios disponibles" con la opción de elegir otra fecha cuando no existan cupos activos.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US802</td>
        <td rowspan="3">Como conductor, deseo solicitar una cita, para agendar la atención en mi taller asignado.</td>
        <td>T113</td>
        <td>Diseñar vista "Nueva Cita".</td>
        <td>Diseñar en la aplicación móvil la vista "Nueva Cita" con campos de fecha, hora y tipo de servicio.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T114</td>
        <td>Implementar formulario móvil.</td>
        <td>Implementar el formulario móvil con validación de campos obligatorios (fecha, hora y servicio) dentro del bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T115</td>
        <td>Habilitar creación de cita.</td>
        <td>Habilitar en la app móvil la creación de una cita y mostrar confirmación visual al usuario una vez registrada exitosamente.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US803</td>
        <td rowspan="3">Como conductor, deseo consultar el estado y detalles de mi cita, para mantenerme informado.</td>
        <td>T116</td>
        <td>Diseñar vista "Mis Citas".</td>
        <td>Diseñar la vista "Mis Citas" con listado de citas y sus estados (Solicitada, Aprobada, Cancelada) de la Aplicación Móvil.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T117</td>
        <td>Implementar navegación.</td>
        <td>Implementar la navegación en la app móvil para visualizar la información completa de una cita seleccionada (fecha, hora, servicio, notas).</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T118</td>
        <td>Desarrollar función pull-to-refresh.</td>
        <td>Desarrollar la función de actualización manual (pull-to-refresh) en la vista de citas dentro del bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US804</td>
        <td rowspan="3">Como conductor, deseo proponer un nuevo horario para mi cita aprobada, para organizarme y optimizar mi tiempo mejor.</td>
        <td>T119</td>
        <td>Diseñar vista "Reprogramar Cita".</td>
        <td>Diseñar en la aplicación móvil la vista "Reprogramar Cita" con un calendario interactivo para seleccionar nueva fecha y hora desde el bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T120</td>
        <td>Implementar cambio de estado visual.</td>
        <td>Implementar la vista en la cual al enviar la solicitud de cambio, la cita previamente "Aprobada" cambie su estado visual a color amarillo con el mensaje "En revisión" hasta recibir respuesta del taller.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T121</td>
        <td>Implementar nueva vista de estado.</td>
        <td>Implementar la nueva vista indicando el cambio de la cita si el taller aprueba la reprogramación, mostrar color verde con el mensaje "Aprobada" o si la rechaza, mostrar color rojo con el mensaje "Rechazada".</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US805</td>
        <td rowspan="3">Como conductor, deseo poder cancelar una cita, para liberar el horario si no podré asistir.</td>
        <td>T122</td>
        <td>Diseñar opción "Cancelar cita".</td>
        <td>Diseñar en la aplicación móvil la opción "Cancelar cita" visible junto al estado actual de cada cita dentro del bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T123</td>
        <td>Implementar acción de cancelación.</td>
        <td>Implementar en la app móvil la acción de cancelación que, tras la confirmación del usuario, cambie el estado visual de la cita a rojo con el texto "Cancelada" y permita registrar un motivo opcional.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T124</td>
        <td>Mostrar alerta informativa.</td>
        <td>Mostrar en la aplicación una alerta informativa que advierta al conductor sobre posibles penalidades cuando intente cancelar una cita con menos de 15 minutos de anticipación.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US806</td>
        <td rowspan="3">Como conductor, deseo recibir recordatorios antes de mi cita, para no olvidarla.</td>
        <td>T125</td>
        <td>Diseñar el mockup de la notificación emergente.</td>
        <td>Diseñar el mockup de la notificación emergente tipo alarma en la aplicación móvil, que avise al conductor con antelación antes de la cita programada.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T126</td>
        <td>Implementar la lógica de recordatorios automáticos.</td>
        <td>Implementar en la aplicación móvil la lógica de recordatorios automáticos, configurando notificaciones locales y push que se activen 24 horas y 1 hora antes de la cita aprobada.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T127</td>
        <td>Agregar opción en ajustes para activar/desactivar recordatorios.</td>
        <td>Agregar en la app móvil una opción en ajustes para que el conductor pueda activar o desactivar los recordatorios automáticos, gestionado desde el bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US807</td>
        <td rowspan="4">Como conductor, deseo adjuntar fotos y una nota al solicitar o editar la cita, para describir el problema del vehículo.</td>
        <td>T128</td>
        <td>Implementar etiqueta de contador de caracteres.</td>
        <td>Implementar una pequeña etiqueta debajo del campo de texto de la nota que muestre al conductor cuántos caracteres ha escrito y cuántos le quedan. Esto mejora la experiencia de usuario y gestiona las expectativas de longitud.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T129</td>
        <td>Diseñar vista para adjuntar/escribir.</td>
        <td>Diseñar en la aplicación móvil la vista donde el conductor pueda adjuntar hasta tres fotos y escribir una nota al crear o editar una cita.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T130</td>
        <td>Implementar botón "Adjuntar multimedia".</td>
        <td>Implementar en la app móvil un botón o texto interactivo con la etiqueta "Adjuntar multimedia" que permita seleccionar imágenes desde la galería o cámara, dentro del bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T131</td>
        <td>Habilitar vista de fotos y notas guardadas.</td>
        <td>Habilitar la vista de las fotos y notas guardadas en la pantalla de información de una cita, permitiendo al conductor revisar los archivos adjuntos desde el bounded context Workshop Operations and Telemetry Processing.</td>
        <td></td>
        <td>&ndash;</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="2">US904</td>
        <td rowspan="2">Como mecánico de taller, deseo finalizar la orden de servicio y generar un reporte técnico, para documentar el trabajo realizado y notificar que el vehículo está listo.</td>
        <td>T132</td>
        <td>Cambiar estado de orden y registrar hora.</td>
        <td>Al guardar los datos del reporte, cambiar automáticamente el estado de la Orden "En Taller" a "Listo para Entrega" y registrar la fecha y hora de finalización.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T133</td>
        <td>Mostrar enlace para descargar reporte.</td>
        <td>Mostrar un enlace en el detalle de la orden finalizada que permita descargar el Reporte generado, asegurando su fácil acceso para el personal y el cliente.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="4">US1001</td>
        <td rowspan="4">Como conductor, deseo ver un dashboard principal con los indicadores clave de mi vehículo, para tener un resumen rápido de su estado.</td>
        <td>T134</td>
        <td>Diseñar vista del dashboard.</td>
        <td>Diseñar la vista del dashboard en la aplicación móvil dentro del bounded context Analytics and Recommendations.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T135</td>
        <td>Implementar visualización de datos.</td>
        <td>Implementar la visualización móvil de datos de salud del vehículo obtenidos desde el bounded context Analytics and Recommendations.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T136</td>
        <td>Añadir opción de actualización.</td>
        <td>Añadir opción de actualización del dashboard móvil para obtener la información más reciente del vehículo desde el bounded context Analytics and Recommendations.</td>
        <td></td>
        <td>JS</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T137</td>
        <td>Mostrar mensaje de error.</td>
        <td>Mostrar mensaje de error si no hay datos disponibles en la Aplicación Móvil.</td>
        <td></td>
        <td>GA</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td rowspan="3">US1003</td>
        <td rowspan="3">Como conductor, deseo ver un reporte sobre mis hábitos de conducción para identificar áreas de mejora y conducir de forma más segura y eficiente.</td>
        <td>T138</td>
        <td>Diseñar vista móvil de hábitos de conducción.</td>
        <td>Diseñar la vista móvil para mostrar los hábitos de conducción con visualización del puntaje y métricas clave (aceleraciones, frenadas, giros, velocidad) basados en los datos del BC Analytics and Recommendations.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T139</td>
        <td>Implementar gráficos de barras.</td>
        <td>Implementar en la vista móvil mediante gráficos de barras los resultados que reflejen el comportamiento del conductor.</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
    <tr>
        <td>T140</td>
        <td>Incorporar opción de filtrar y actualizar.</td>
        <td>Incorporar en la aplicación móvil la opción para filtrar y actualizar los gráficos según el periodo seleccionado (Últimos 7 días, mes, trimestre).</td>
        <td></td>
        <td>AB</td>
        <td>To-do</td>
    </tr>
</table>


#### 6.2.2.4. Development Evidence for Sprint Review
#### 6.2.2.5. Testing Suite Evidence for Sprint Review
#### 6.2.2.6. Execution Evidence for Sprint Review
#### 6.2.2.7. Services Documentation Evidence for Sprint Review
#### 6.2.2.8. Software Deployment Evidence for Sprint Review
#### 6.2.2.9. Team Collaboration Insights during Sprint