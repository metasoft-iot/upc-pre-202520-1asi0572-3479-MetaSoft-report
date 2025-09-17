# Capítulo IV: Solution Software Design

## 4.1. Strategic-Level Domain-Driven Design

### 4.1.1. Design-Level EventStorming
#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling
#### 4.1.1.3 Bounded Context Canvases

### 4.1.2. Context Mapping
### 4.1.3. Software Architecture
<p align="justify">
La arquitectura de software de <b>SafeCar</b> se ha diseñado aplicando el modelo <b>C4</b>, lo que permite representar de manera jerárquica y clara los distintos niveles de abstracción del sistema: desde la visión general hasta los detalles de implementación y despliegue. Este enfoque asegura que todos los involucrados comprendan cómo se organiza la solución y cómo interactúan sus diferentes componentes.
</p>

#### 4.1.3.1. Software Architecture System Landscape Diagram
<p align="justify">
Este diagrama ilustra el panorama general del ecosistema en el que se ubica SafeCar. Representa al sistema dentro de su contexto, mostrando los principales actores (conductores, mecánicos) y los sistemas externos con los que interactúa.
</p>

<img src="" alt="System Landscape Diagram"/>

<br/>**Explicación:**  
<p align="justify">
SafeCar se posiciona como una plataforma IoT de mantenimiento vehicular inteligente que conecta a conductores con mecánicos. El sistema recibe datos desde el dispositivo instalado en el vehículo y genera reportes accesibles para los mecánicos. También se comunica con servicios externos como pasarelas de pago y sistemas de notificaciones para brindar un ecosistema completo.
</p>

#### 4.1.3.2. Software Architecture Context Level Diagrams
<p align="justify">
El <b>Context Diagram</b> representa la solución como una caja central y muestra a su alrededor a los usuarios y sistemas externos. De esta forma se comprende qué actores utilizan la plataforma y qué dependencias externas son necesarias.
</p>

<img src="/assets/img/capitulo-IV/system-context.svg" alt="Context Level Diagram" width="1000"/>

<br/>**Explicación del diagrama:**

- **SafeCar Platform:** Gestiona la información recibida de los dispositivos IoT de los vehículos y coordina las interacciones con los usuarios y servicios externos.  
- **Driver (Conductor):** Consulta alertas personalizadas, programa mantenimientos y recibe recomendaciones.  
- **Mechanic (Mecánico):** Accede a reportes automáticos del estado de los vehículos y organiza reparaciones.  
- **Visitor (Visitante):** Puede navegar por el sitio público y registrarse como conductor o mecánico.  
- **OpenAI Service:** Servicio externo utilizado para el análisis inteligente de datos, soporte en generación de reportes o procesamiento avanzado con IA.  
- **Twilio Service:** Servicio externo que permite el envío de correos electrónicos y notificaciones, asegurando la comunicación efectiva con los usuarios.  

Con este nivel de representación, se obtiene una visión global de cómo SafeCar se conecta con sus usuarios y servicios complementarios, reforzando tanto el ecosistema de mantenimiento vehicular como la experiencia final.

#### 4.1.3.2. Software Architecture Container Level Diagrams
<p align="justify">
El <b>Container Diagram</b> representa la arquitectura de alto nivel de la plataforma SafeCar, mostrando cómo se dividen las responsabilidades entre los diferentes contenedores de software, las tecnologías utilizadas y cómo se comunican entre sí y con los actores externos.
</p>

<img src="/assets/img/capitulo-IV/system-container.svg" alt="Container Diagram SafeCar" width="1000"/>

<br/>**Explicación del diagrama:**

- **SafeCar Mobile Application:** Aplicación móvil con notificaciones sobre alertas críticas, consejos de conducción eficiente y estado del vehículo en tiempo real. Utiliza una base de datos local para acceso offline.  
- **Mobile SQLite Database:** Almacena datos del vehículo en el dispositivo móvil para asegurar funcionamiento sin conexión.  
- **SafeCar Website:** Sitio web público donde los visitantes consultan información y acceden a la aplicación principal.  
- **SafeCar Web Application (Angular v20):** Interfaz principal para los mecánicos y conductores, desde donde gestionan vehículos, programan mantenimientos y visualizan reportes.  
- **SafeCar Backend Platform (Spring Boot, Java 17):** Núcleo de la lógica de negocio que recibe datos desde los dispositivos IoT y las aplicaciones, procesa solicitudes y coordina respuestas.  
- **SafeCar Database (MySQL):** Base de datos central que almacena usuarios, vehículos, reportes, citas y registros de mantenimiento.  
- **OpenAI Service (Servicio Externo):** Utilizado para análisis avanzado con IA, como generación de reportes inteligentes o recomendaciones personalizadas.  
- **Twilio Service (Servicio Externo):** Encargado de enviar notificaciones y correos electrónicos transaccionales a los usuarios.  

**Relaciones principales:**  
- Los **conductores** reciben alertas desde la app móvil y web.  
- Los **mecánicos** utilizan la aplicación web para anticipar fallas y gestionar citas.  
- El **backend** se comunica con los servicios externos (OpenAI, Twilio) para reforzar funcionalidades de inteligencia y comunicación.  
- Toda la información se centraliza en la **base de datos de SafeCar**, garantizando integridad y persistencia.  

Este nivel permite visualizar claramente cómo se distribuyen las responsabilidades entre los distintos componentes y cómo cada contenedor cumple un rol específico dentro de la solución.

#### 4.1.3.3. Software Architecture Deployment Diagrams
## 4.2. Tactical-Level Domain-Driven Design

### 4.2.1. Bounded Context: Device Management
#### 4.2.1.1. Domain Layer
#### 4.2.1.2. Interface Layer
#### 4.2.1.3. Application Layer
#### 4.2.1.4. Infrastructure Layer
#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.1.6.2. Bounded Context Database Design Diagram

### 4.2.2. Bounded Context: Telemetry Processing
#### 4.2.2.1. Domain Layer
#### 4.2.2.2. Interface Layer
#### 4.2.2.3. Application Layer
#### 4.2.2.4. Infrastructure Layer
#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.2.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.2.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.2.6.2. Bounded Context Database Design Diagram

### 4.2.3. Bounded Context: Alerting
#### 4.2.3.1. Domain Layer
#### 4.2.3.2. Interface Layer
#### 4.2.3.3. Application Layer
#### 4.2.3.4. Infrastructure Layer
#### 4.2.3.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.3.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.3.6.2. Bounded Context Database Design Diagram

### 4.2.4. Bounded Context: Analytics and Recommendations
#### 4.2.4.1. Domain Layer
#### 4.2.4.2. Interface Layer
#### 4.2.4.3. Application Layer
#### 4.2.4.4. Infrastructure Layer
#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.4.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.4.6.2. Bounded Context Database Design Diagram

### 4.2.5. Bounded Context: Driver Engagement
#### 4.2.5.1. Domain Layer
#### 4.2.5.2. Interface Layer
#### 4.2.5.3. Application Layer
#### 4.2.5.4. Infrastructure Layer
#### 4.2.5.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.5.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.5.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.5.6.2. Bounded Context Database Design Diagram

### 4.2.6. Bounded Context: Workshop Operations
#### 4.2.6.1. Domain Layer
#### 4.2.6.2. Interface Layer
#### 4.2.6.3. Application Layer
#### 4.2.6.4. Infrastructure Layer
#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.6.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.6.6.2. Bounded Context Database Design Diagram

### 4.2.7. Bounded Context: Admin and Billing
#### 4.2.7.1. Domain Layer
#### 4.2.7.2. Interface Layer
#### 4.2.7.3. Application Layer
#### 4.2.7.4. Infrastructure Layer
#### 4.2.7.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.7.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.7.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.7.6.2. Bounded Context Database Design Diagram

### 4.2.8. Bounded Context: Security and Compliance
#### 4.2.8.1. Domain Layer
#### 4.2.8.2. Interface Layer
#### 4.2.8.3. Application Layer
#### 4.2.8.4. Infrastructure Layer
#### 4.2.8.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.8.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.8.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.8.6.2. Bounded Context Database Design Diagram