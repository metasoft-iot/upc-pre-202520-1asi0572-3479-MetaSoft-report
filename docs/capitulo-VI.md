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

![Sprint 1 - SafeCar](https://github.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/blob/docs/chapter-VI/assets/img/capitulo-VI/sprint%201.png)


#### 6.2.1.4. Development Evidence for Sprint Review

<p align="justify">
Durante el Sprint 1, el equipo realizó avances significativos en la implementación de los productos de la solución SafeCar, abarcando tanto la Landing Page como las funcionalidades principales de la aplicación web. Los principales logros incluyen la implementación completa de la navegación y componentes de la Landing Page, el desarrollo de los sistemas de autenticación y registro de usuarios, y la creación de las interfaces para la gestión de perfiles. La tabla a continuación presenta el registro detallado de commits realizados en cada repositorio, documentando el progreso de desarrollo y las contribuciones de cada miembro del equipo durante este primer sprint.
</p>

<table width="100%"> <tr> <th>Repository</th> <th>Branch</th> <th>Commit Id</th> <th>Commit Message</th> <th>Commit Message Body</th> <th>Commit on (Date)</th> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>c1a7f3d</td> <td>Inicializa proyecto React</td> <td>Configuración inicial del frontend con create-react-app, estructura de carpetas y dependencias básicas.</td> <td>18/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>ab9e4c2</td> <td>Agrega layout y navegación</td> <td>Header, Footer y componente Layout; rutas principales añadidas con React Router.</td> <td>19/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>7f2d1b8</td> <td>Landing: estructura inicial</td> <td>Se crea la página principal, sección hero y componentes estáticos para la landing page.</td> <td>20/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>e3c5a99</td> <td>Responsive y estilos base</td> <td>Se añade CSS base y se adapta el hero y features a diseño responsive.</td> <td>21/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>4b8f2e1</td> <td>Autenticación: login y logout</td> <td>Implementa formulario de login, manejo de tokens y ruta protegida de ejemplo.</td> <td>22/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>9d0c6b4</td> <td>Dashboard: componentes básicos</td> <td>Tarjetas, lista de incidentes y layout del dashboard con datos mock para desarrollo.</td> <td>23/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>f6a1d3c</td> <td>Integración fake-api API</td> <td> servicios para llamadas a la fake API y manejo de errores centralizado.</td> <td>24/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>2b7e9f0</td> <td>Formularios: creación de reporte</td> <td>Formulario para crear reportes de incidentes con validación básica y envío al servicio.</td> <td>25/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>5c3d8a7</td> <td>Estilos: tema y paleta</td> <td>Definición de variables CSS, tema principal y ajustes visuales para consistencia.</td> <td>26/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>d8f4b2a</td> <td>Sección características</td> <td>Se agregan cards de features, iconografía y descripción de valor para usuarios.</td> <td>27/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>0a4b1e6</td> <td>Formulario de contacto</td> <td>Contacto con validación y envío a endpoint mock; incluye mensajes de éxito/error.</td> <td>28/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>c7e2f10</td> <td>SEO y meta tags</td> <td>Se añaden meta tags, title dinámico y mejoras para SEO básico de la landing.</td> <td>29/09/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>81b6c4d</td> <td>Animaciones y microinteracciones</td> <td>Animaciones suaves en hero y botones; mejora de la percepción UX.</td> <td>30/09/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>f2c9a55</td> <td>Corrección: validación robusta</td> <td>Arregla edge cases en formularios, mensajes claros y prevención de envíos dobles.</td> <td>01/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>3e7d4b9</td> <td>Accesibilidad: ARIA y tab order</td> <td>Se añaden atributos ARIA, roles y mejora del foco para cumplimiento básico de accesibilidad.</td> <td>02/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>a5b1e2f</td> <td>Performance: lazy load</td> <td>Implementa lazy loading en rutas y componentes pesados para mejorar tiempo de carga.</td> <td>03/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>6d4f0c3</td> <td>Tests: estructura inicial</td> <td>Agrega configuración de testing (Jest + React Testing Library) y tests básicos para componentes.</td> <td>04/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>9f8a2b1</td> <td>CI: pipeline GitHub Actions</td> <td>Archivo de workflow para build, test y lint en cada push a main.</td> <td>05/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>2e1c7f8</td> <td>Fix: bug en paginación</td> <td>Corrige cálculo de índice en la paginación de lista de incidentes.</td> <td>06/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>b3c6d9e</td> <td>Actualiza copy y CTA</td> <td>Mejora de textos en hero y cambio de CTA para aumentar conversión (A/B copy ver.).</td> <td>06/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>4f0b8a2</td> <td>Integración analítica</td> <td>Se añade Google Analytics / Tag Manager y eventos básicos para medir interacciones.</td> <td>07/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>18d3f5c</td> <td>Fix: formulario móvil</td> <td>Arregla layout y comportamiento del formulario de contacto en pantallas pequeñas.</td> <td>08/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>c9a2e47</td> <td>Deploy: configuración Netlify</td> <td>Archivo de configuración para despliegue continuo en Netlify y build optimizado.</td> <td>08/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>7b5f1d2</td> <td>Accesibilidad landing</td> <td>Correcciones ARIA, contraste y mejoras en navegación por teclado.</td> <td>08/10/2025</td> </tr> <tr> <td>SafeCar-landingPage</td> <td>main</td> <td>ef6b3a0</td> <td>Optimiza imágenes y assets</td> <td>Compresión de imágenes, uso de formatos webp y carga diferida de assets no críticos.</td> <td>08/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>5a2d9e4</td> <td>Upgrade dependencias</td> <td>Actualiza dependencias críticas y realiza ajustes menores para compatibilidad.</td> <td>08/10/2025</td> </tr> <tr> <td>SafeCar-frontend</td> <td>main</td> <td>0f7c3b9</td> <td>Últimos fixes antes del release</td> <td>Pequeños arreglos visuales, corrección de z-index y pruebas finales para release.</td> <td>08/10/2025</td> </tr> </table>

#### 6.2.1.5. Testing Suite Evidence for Sprint Review
#### 6.2.1.6. Execution Evidence for Sprint Review
#### 6.2.1.7. Services Documentation Evidence for Sprint Review
#### 6.2.1.8. Software Deployment Evidence for Sprint Review
#### 6.2.1.9. Team Collaboration Insights during Sprint

<p align="justify">
Durante el Sprint 1, el equipo MetaSoft demostró una colaboración efectiva en el desarrollo de los productos de SafeCar, evidenciada a través de los analíticos de GitHub que reflejan la participación activa de todos los miembros en la implementación de la Landing Page y la aplicación web. Los datos de colaboración muestran una distribución equilibrada del trabajo, con cada miembro contribuyendo según su rol asignado en la matriz LACX y cumpliendo con las tareas específicas del Sprint Backlog.
</p>

##### Analíticos de Colaboración en GitHub

<p align="justify">
Los siguientes analíticos proporcionan una visión detallada de la actividad de colaboración del equipo durante el Sprint 1, incluyendo la frecuencia de commits, la distribución de contribuciones por miembro y los patrones de trabajo colaborativo en los repositorios del proyecto.
</p>
