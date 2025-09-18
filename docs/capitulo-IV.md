# Capítulo IV: Solution Software Design

## 4.1. Strategic-Level Domain-Driven Design

### 4.1.1. Design-Level EventStorming
#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling

<img src="/assets/img/capitulo-IV/Domain Message Flows Modeling.jpg" alt="Domain Message Flows Modeling" width="1000"/>

#### 4.1.1.3 Bounded Context Canvases

Maintenance Management

<img src="/assets/img/capitulo-IV/Bounded Context Canvases.jpg" alt="Bounded Context Canvases" width="1000"/>

Vehicle Management

<img src="/assets/img/capitulo-IV/Bounded Context Vehicle.jpg" alt="Bounded Context Vehicle" width="1000"/>

Service Catalog Management

<img src="/assets/img/capitulo-IV/Bounded Context Menu.jpg" alt="Bounded Context Menu" width="1000"/>

IoT Monitoring

<img src="/assets/img/capitulo-IV/Iot monitoring.jpg" alt="Iot monitoring" width="1000"/>

Headquarter Management

<img src="/assets/img/capitulo-IV/Headquarter management.jpg" alt="Headquarter management" width="1000"/>

Device Management

<img src="/assets/img/capitulo-IV/device-management.png" alt="Device Management" width="1000"/>

Telemetry Processing

<img src="/assets/img/capitulo-IV/telemetry-processing.png" alt="Telemetry Processing" width="1000"/>

Analytics & Recommendations

<img src="/assets/img/capitulo-IV/analytics-recommendations.png" alt="Analytics & Recommendations" width="1000"/>

Alerting

<img src="/assets/img/capitulo-IV/alerting.png" alt="Alerting" width="1000"/>

Driver Engagement

<img src="/assets/img/capitulo-IV/driver-engagement.png" alt="Driver Engagement" width="1000"/>

Workshop Operations

<img src="/assets/img/capitulo-IV/workshop-operations.png" alt="Workshop Operations" width="1000"/>

Admin & Billing

<img src="/assets/img/capitulo-IV/admin-billing.png" alt="Admin & Billing" width="1000"/>

Security & Compliance

<img src="/assets/img/capitulo-IV/security-compliance.png" alt="Security & Compliance" width="1000"/>

Notification Gateway

<img src="/assets/img/capitulo-IV/notification-gateway.png" alt="Notification Gateway" width="1000"/>


### 4.1.2. Context Mapping

Se describe las relaciones estructurales entre los **Bounded Contexts** de la plataforma, los **patrones DDD** aplicados y los **contratos** (eventos/APIs) que conectan los contextos.

<img src="/assets/img/capitulo-IV/context-mapping.png" alt="Context mapping" width="1000"/>

<table>
  <caption>Relaciones clave entre Bounded Contexts y patrones DDD</caption>
  <thead>
    <tr>
      <th>Desde</th>
      <th>Hacia</th>
      <th>Propósito</th>
      <th>Patrón DDD</th>
      <th>Contrato</th>
      <th>Mensajes / Consultas</th>
      <th>SLA / Notas</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Device Management</td>
      <td>Telemetry Processing</td>
      <td>Propagar alta/estado de dispositivo</td>
      <td>Published Language (+ Conformist en TP)</td>
      <td>Eventos</td>
      <td><code>DeviceProvisioned</code>, <code>DeviceAssigned</code>, <code>DeviceDecommissioned</code></td>
      <td>Entrega eventual ≤ 1 min</td>
    </tr>
    <tr>
      <td>Telemetry Processing</td>
      <td>Analytics &amp; Recommendations</td>
      <td>Alimentar analítica con datos normalizados</td>
      <td>Customer/Supplier</td>
      <td>Eventos</td>
      <td><code>TelemetryNormalized</code>, <code>TripSegmentClosed</code></td>
      <td>p95 ≤ 5 s; pérdida &lt; 0.1%</td>
    </tr>
    <tr>
      <td>Telemetry Processing</td>
      <td>Admin &amp; Billing</td>
      <td>Medición de uso para facturación</td>
      <td>Customer/Supplier</td>
      <td>Evento</td>
      <td><code>UsageMetered</code></td>
      <td>Corte diario 23:59 UTC</td>
    </tr>
    <tr>
      <td>Analytics &amp; Recommendations</td>
      <td>Alerting</td>
      <td>Disparar alertas según insights</td>
      <td>Published Language</td>
      <td>Eventos</td>
      <td><code>InsightDetected</code>, <code>AnomalyDetected</code></td>
      <td>Entrega ≤ 10 s</td>
    </tr>
    <tr>
      <td>Analytics &amp; Recommendations</td>
      <td>Driver Engagement</td>
      <td>Actualizar puntaje de conductor</td>
      <td>Conformist</td>
      <td>Evento</td>
      <td><code>SafetyScoreUpdated</code></td>
      <td>Consistencia eventual</td>
    </tr>
    <tr>
      <td>Analytics &amp; Recommendations</td>
      <td>Workshop Operations</td>
      <td>Recomendar mantenimientos</td>
      <td>Published Language</td>
      <td>Evento</td>
      <td><code>MaintenanceRecommendation</code></td>
      <td>Ventana de programación configurable</td>
    </tr>
    <tr>
      <td>Alerting</td>
      <td>Notification Gateway</td>
      <td>Enviar mensajes transaccionales</td>
      <td>Open-Host Service</td>
      <td>API / Comando</td>
      <td><code>SendMessage(tenant, template, channel, payload)</code></td>
      <td>Tasa de entrega ≥ 99%</td>
    </tr>
    <tr>
      <td>Driver Engagement</td>
      <td>Notification Gateway</td>
      <td>Enviar coaching/campañas</td>
      <td>Open-Host Service</td>
      <td>API / Comando</td>
      <td><code>SendMessage(...)</code></td>
      <td>Respeta ventanas de silencio</td>
    </tr>
    <tr>
      <td>Workshop Operations</td>
      <td>Device Management</td>
      <td>Solicitar cambio de dispositivo</td>
      <td>Open-Host Service</td>
      <td>API / Comando</td>
      <td><code>RequestDeviceSwap(vehicle, oldDevice, newDevice)</code></td>
      <td>Idempotencia por <code>requestId</code></td>
    </tr>
    <tr>
      <td>Workshop Operations</td>
      <td>Admin &amp; Billing</td>
      <td>Generar cargos por servicio</td>
      <td>Published Language</td>
      <td>Evento</td>
      <td><code>WorkOrderClosed</code></td>
      <td>Corte semanal</td>
    </tr>
    <tr>
      <td>Admin &amp; Billing</td>
      <td>(DM / AL / DE / WO)</td>
      <td>Señalar suspensión/reactivación de servicio</td>
      <td>Published Language</td>
      <td>Eventos</td>
      <td><code>SubscriptionSuspended</code>, <code>SubscriptionReactivated</code></td>
      <td>Efecto ≤ 1 min</td>
    </tr>
    <tr>
      <td>Security &amp; Compliance</td>
      <td>Todos</td>
      <td>Publicar/actualizar políticas y auditar</td>
      <td>Policy Provider (+ Published Language)</td>
      <td>Evento</td>
      <td><code>SecurityPolicyUpdated</code>, <code>AuditRecord</code></td>
      <td>Retención y acceso por tenant</td>
    </tr>
  </tbody>
</table>


## Decisiones y supuestos

- **Driver Score** vive en **Analytics** y se **publica** a Driver Engagement (`SafetyScoreUpdated`) para evitar duplicación de cálculo.
- **Elegibilidad de servicio** depende de **Admin & Billing** y se comunica por eventos (`SubscriptionSuspended/Reactived`), no con consultas síncronas en el camino crítico.
- **Notification Gateway** es un **OHS** común; centraliza plantillas y trazabilidad de entrega.
- **Security & Compliance** actúa como **Policy Provider** y emite `SecurityPolicyUpdated`; cada contexto aplica retención y acceso de acuerdo a su categoría de datos.
- Todos los eventos se **versionan** (`type`, `version`, `occurredAt`, `tenantId`, `entityId`) y se implementa **Outbox + DLQ** para entrega fiable.

---

## Riesgos y mitigaciones (resumen)

- **Tormenta de alertas** → *Throttling*, deduplicación, prioridades por severidad/tenant.
- **Late data** en telemetría → ventanas de tolerancia por negocio, reprocesos controlados.
- **Inconsistencias de elegibilidad** → event-sourcing de `SubscriptionStatus` + reconciliación diaria.
- **Lock-in analítico** → contratos de PL claros y gobernanza de versiones; evitar Shared Kernel salvo taxonomías muy estables.

---

## Glosario de patrones

- **Published Language (PL)**: el upstream publica un idioma/contrato estable (eventos o API) que downstreams consumen.
- **Conformist (CF)**: el downstream adopta el modelo del upstream para ir rápido (menos protección).
- **Customer/Supplier (CS)**: relación con expectativas y **SLA** claros entre consumidor y proveedor.
- **Open‑Host Service (OHS)**: API pública y estable que varios contextos pueden usar sin coordinaciones especiales.
- **Policy Provider (PP)**: contexto que define y emite políticas transversales (acceso, retención, auditoría).


### 4.1.3. Software Architecture
<p align="justify">
La arquitectura de software de <b>SafeCar</b> se ha diseñado aplicando el modelo <b>C4</b>, lo que permite representar de manera jerárquica y clara los distintos niveles de abstracción del sistema: desde la visión general hasta los detalles de implementación y despliegue. Este enfoque asegura que todos los involucrados comprendan cómo se organiza la solución y cómo interactúan sus diferentes componentes.
</p>

#### 4.1.3.1. Software Architecture System Landscape Diagram
<p align="justify">
Este diagrama ilustra el panorama general del ecosistema en el que se ubica SafeCar. Representa al sistema dentro de su contexto, mostrando los principales actores (conductores, mecánicos) y los sistemas externos con los que interactúa.
</p>

<img src="/assets/img/capitulo-IV/C4-Landscape-Diagram-SafeCar-Platform.png" alt="System Landscape Diagram"/>

<br/>**Explicación:**
<p align="justify">
SafeCar se posiciona como una plataforma IoT de mantenimiento vehicular inteligente que conecta a conductores con mecánicos. El sistema recibe datos desde el dispositivo instalado en el vehículo y genera reportes accesibles para los mecánicos. También se comunica con servicios externos como sistemas de notificaciones para brindar un ecosistema completo.
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
<p align="justify">
Los <b>Deployment Diagrams</b> representan la arquitectura física de despliegue de la plataforma SafeCar, mostrando cómo los contenedores de software se distribuyen en la infraestructura tecnológica. Este nivel de detalle es esencial para comprender los aspectos operacionales del sistema, incluyendo la configuración de servidores, bases de datos, servicios en la nube y las conexiones de red entre los diferentes nodos de la infraestructura.
</p>

<p align="justify">
En SafeCar, el despliegue se ha diseñado considerando escalabilidad, disponibilidad y seguridad. La arquitectura aprovecha tanto infraestructura local como servicios en la nube para garantizar un rendimiento óptimo y la capacidad de manejar el crecimiento de usuarios y dispositivos IoT conectados.
</p>

<img src="/assets/img/capitulo-IV/Software-Architecture-Deployment-Diagrams.png" alt="Deployment Diagram SafeCar" width="1000"/>


## 4.2. Tactical-Level Domain-Driven Design

### 4.2.1. Bounded Context: Device Management

#### 4.2.1.1. Domain Layer

**Propósito del BC**
Gestionar el ciclo de vida completo de los dispositivos IoT, desde su registro y configuración inicial hasta su asignación a un vehículo y eventual desactivación. Este BC es la fuente de verdad sobre qué dispositivo está instalado en qué vehículo.

<b>A) Agregado y Entidades (diccionario)</b>

- **Aggregate Root: `Device`**
  - **Propósito:** Encapsular toda la información, estado y reglas de negocio de un dispositivo IoT.
  - **Invariantes:**
    - Un `serialNumber` es único y no puede cambiar una vez registrado.
    - Un dispositivo solo puede ser asignado a un vehículo a la vez (`vehicleId`).
    - Un dispositivo debe estar en estado `ACTIVE` para ser asignado.
    - El estado (`status`) debe seguir un ciclo de vida válido (ej. no se puede pasar de `MAINTENANCE` a `ASSIGNED` directamente).
  - **Atributos:**
    - `deviceId: UUID`
    - `serialNumber: String`
    - `model: String`
    - `firmwareVersion: FirmwareVersion`
    - `status: DeviceStatus`
    - `vehicleId: Optional<UUID>`
  - **Métodos:**
    - `assignToVehicle(vehicleId: UUID): void`
    - `unassignFromVehicle(): void`
    - `updateFirmware(newVersion: FirmwareVersion): void`
    - `activate(): void`
    - `deactivate(): void`
    - `placeInMaintenance(): void`

<b>B) Value Objects (records/enums)</b>

- **`FirmwareVersion` (record):** `major: int`, `minor: int`, `patch: int` (encapsula la lógica de comparación de versiones).
- **`DeviceStatus` (enum):** `REGISTERED`, `ACTIVE`, `INACTIVE`, `MAINTENANCE`, `EOL` (End-of-Life).

<b>C) Servicios de Dominio (interfaces)</b>

- **`DeviceProvisioner`** → `provision(device: Device): ProvisioningResult`
- **`SerialNumberUniquenessChecker`** → `isUnique(serialNumber: String): boolean`

> Implementaciones concretas de estos servicios residen en la capa de Infraestructura.

<b>D) Repositorios (puertos del dominio)</b>

- **`DeviceRepository`**
  - `save(device: Device): Device`
  - `findByDeviceId(deviceId: UUID): Optional<Device>`
  - `findBySerialNumber(serialNumber: String): Optional<Device>`
  - `findByVehicleId(vehicleId: UUID): Optional<Device>`

<b>E) Commands & Queries (records en dominio)</b>

**Commands**
- `RegisterDeviceCommand(serialNumber: String, model: String, initialFirmwareVersion: FirmwareVersion)`
- `AssignDeviceToVehicleCommand(deviceId: UUID, vehicleId: UUID)`
- `UnassignDeviceFromVehicleCommand(deviceId: UUID)`
- `UpdateDeviceFirmwareCommand(deviceId: UUID, newFirmwareVersion: FirmwareVersion)`
- `DeactivateDeviceCommand(deviceId: UUID)`

**Queries**
- `GetDeviceByDeviceIdQuery(deviceId: UUID)`
- `GetDeviceByVehicleIdQuery(vehicleId: UUID)`
- `GetAllDevicesQuery(page: int, size: int)`

<b>F) Domain Events </b>

- `DeviceRegisteredEvent` (deviceId, serialNumber, occurredOn)
- `DeviceAssignedToVehicleEvent` (deviceId, vehicleId, occurredOn)
- `DeviceUnassignedFromVehicleEvent` (deviceId, vehicleId, occurredOn)
- `DeviceFirmwareUpdatedEvent` (deviceId, oldVersion, newVersion, occurredOn)
- `DeviceStatusChangedEvent` (deviceId, oldStatus, newStatus, occurredOn)

<b>G) Facade (contrato entre BCs)</b>

- **Interface en dominio:** `ExternalVehicleContextFacade`
  - **Propósito:** Consultar información del BC de Flota de Vehículos sin acoplamiento directo.
  - **Métodos ejemplo:**
    - `existsVehicle(vehicleId: UUID): boolean`

<b>H) Excepciones de Dominio</b>

- `DeviceNotFoundException`
- `SerialNumberAlreadyExistsException`
- `DeviceAlreadyAssignedException`
- `InvalidDeviceStatusTransitionException`

---
#### 4.2.1.2. Interface Layer
<b>A) Controladores (REST Controllers)</b>

1) **`DeviceController`**
- **Responsabilidad:** Exponer endpoints para la gestión completa del ciclo de vida de los dispositivos.
- **Dependencias:** `DeviceCommandService`, `DeviceQueryService`, `DeviceResourceFromEntityAssembler`.
- **Rutas:**
  - `POST /api/v1/devices` – registrar un nuevo dispositivo.
    - **Request:** `RegisterDeviceResource`
    - **Command:** `RegisterDeviceCommand`
    - **Response:** `DeviceResource`
  - `PUT /api/v1/devices/{deviceId}/assignment` – asignar un dispositivo a un vehículo.
    - **Request:** `AssignDeviceResource`
    - **Command:** `AssignDeviceToVehicleCommand`
    - **Response:** `DeviceResource`
  - `DELETE /api/v1/devices/{deviceId}/assignment` – desasignar un dispositivo.
    - **Command:** `UnassignDeviceFromVehicleCommand`
    - **Response:** `204 No Content`
  - `PATCH /api/v1/devices/{deviceId}/firmware` – actualizar la versión del firmware.
    - **Request:** `UpdateFirmwareResource`
    - **Command:** `UpdateDeviceFirmwareCommand`
    - **Response:** `DeviceResource`
  - `GET /api/v1/devices/{deviceId}` – obtener un dispositivo por su ID.
    - **Query:** `GetDeviceByDeviceIdQuery`
    - **Response:** `DeviceResource`
  - `GET /api/v1/devices?vehicleId={vehicleId}` – obtener un dispositivo por el ID del vehículo.
    - **Query:** `GetDeviceByVehicleIdQuery`
    - **Response:** `DeviceResource`

---

<b>B) Resources (DTOs de entrada/salida)</b>

Ubicación: `interfaces/resources`

**Requests**
- `RegisterDeviceResource { serialNumber: string, model: string, initialFirmwareVersion: string }`
- `AssignDeviceResource { vehicleId: string }`
- `UpdateFirmwareResource { newFirmwareVersion: string }`

**Responses**
- `DeviceResource { deviceId: string, serialNumber: string, model: string, firmwareVersion: string, status: string, vehicleId: string | null }`

> **Validaciones** (Bean Validation): `@NotNull`, `@NotBlank`, `@Pattern` para `serialNumber` y `firmwareVersion`.

---

<b>C) Assemblers (mapeadores)</b>

Ubicación: `interfaces/transform`

- **`DeviceResourceFromEntityAssembler`**
  - `toResource(Device domain): DeviceResource`
  - `toDomain(RegisterDeviceResource r): RegisterDeviceCommand`
  - `toDomain(AssignDeviceResource r, UUID deviceId): AssignDeviceToVehicleCommand`
  - `toDomain(UpdateFirmwareResource r, UUID deviceId): UpdateDeviceFirmwareCommand`

---

<b>D) Manejo de errores y contrato</b>

- Respuestas de error estandarizadas (`Problem+JSON`):
  - `400` Bad Request (validación de DTO).
  - `404` Not Found (`DeviceNotFoundException`).
  - `409` Conflict (`SerialNumberAlreadyExistsException`, `DeviceAlreadyAssignedException`).
- Versionado de API: prefijo `/api/v1` y *content negotiation* (`application/json`).

---
#### 4.2.1.3. Application Layer

<b>A) Command Services (implementaciones)</b>

1) **`DeviceCommandServiceImpl`** (`application/internal/commandservices`)
- **register(cmd: RegisterDeviceCommand): Device**
  1. Verifica unicidad usando `SerialNumberUniquenessChecker.isUnique`. Si no, lanza `SerialNumberAlreadyExistsException`.
  2. Crea una nueva instancia del agregado `Device`.
  3. Opcional: Invoca `DeviceProvisioner.provision(device)` para registrarlo en el Hub IoT.
  4. Persiste con `deviceRepository.save(..)` y publica `DeviceRegisteredEvent`.
- **assignToVehicle(cmd: AssignDeviceToVehicleCommand): Device**
  1. Carga el `Device` por `deviceId`.
  2. Verifica si el vehículo existe usando `ExternalVehicleContextFacade.existsVehicle`.
  3. Invoca `device.assignToVehicle(cmd.vehicleId)`. El agregado valida sus invariantes (ej. estado `ACTIVE`).
  4. Persiste los cambios y publica `DeviceAssignedToVehicleEvent`.

<b>B) Query Services (implementaciones)</b>

1) **`DeviceQueryServiceImpl`**
- **handle(q: GetDeviceByDeviceIdQuery): Optional<Device>** → `deviceRepository.findByDeviceId(..)`
- **handle(q: GetDeviceByVehicleIdQuery): Optional<Device>** → `deviceRepository.findByVehicleId(..)`

<b>C) Event Handlers</b>

Ubicación: `application/internal/eventhandlers`

- **`NotifyTelemetryOnAssignmentHandler`**
  - **Escucha:** `DeviceAssignedToVehicleEvent`
  - **Acción:** Publica un evento de integración para notificar al BC de *Telemetry Processing* que debe empezar a escuchar datos de este dispositivo para el vehículo asociado.
- **`AuditDeviceLifecycleHandler`**
  - **Escucha:** `DeviceRegisteredEvent`, `DeviceStatusChangedEvent`, `DeviceAssignedToVehicleEvent`.
  - **Acción:** Escribe un registro de auditoría en un log o tabla separada para trazabilidad.

<b>D) Outbound Services / ACL (Facade entre BCs)</b>

Ubicación: `application/outboundservices/acl`

- **Interface en dominio:** `ExternalVehicleContextFacade`
- **Implementación (ACL):** **`ExternalVehicleContextService`**
  - **existsVehicle(vehicleId: UUID): boolean** — Llama a un endpoint del BC *Vehicle Fleet Management* para validar que el vehículo existe.
  - **Manejo de fallos:** *timeouts*, *circuit breaker*, *fallback*.

---
#### 4.2.1.4. Infrastructure Layer

<b>A) Persistencia (JPA / MySQL)</b>

**Entidades JPA (solo para persistencia):**
- `DeviceEntity` ↔ tabla `devices`

**Repositorios Spring Data (infra):**
- `DeviceJpaRepository extends JpaRepository<DeviceEntity, Long>`
  - `Optional<DeviceEntity> findByDeviceId(UUID deviceId)`
  - `Optional<DeviceEntity> findBySerialNumber(String serialNumber)`
  - `Optional<DeviceEntity> findByVehicleId(UUID vehicleId)`

**Adaptadores que implementan puertos del dominio:**
- `DeviceRepositoryImpl implements DeviceRepository`
  - Usa `DeviceJpaRepository` + *mappers* para convertir **Entity ↔ Aggregate**.

**Mappers (infra/persistence/mapping):**
- `DeviceMapper`
  - `toEntity(Device)` / `toAggregate(DeviceEntity)`

<b>B) Integración con servicios externos</b>

**Cliente IoT Hub (infra/external/iot):**
- `AzureIoTHubClientImpl implements DeviceProvisioner`
  - HTTP con SDK de Azure IoT Hub.
  - *Configuración:* `IOTHUB_CONNECTION_STRING` (en `infrastructure/config`).
  - *Resiliencia:* *timeouts*, *retry*, *circuit breaker* (Resilience4j).

<b>C) Publicación de eventos</b>

**Adaptador:** `DomainEventPublisherImpl` (infra/events)
- Implementa puerto `DomainEventPublisher`.
- Usa `ApplicationEventPublisher` (Spring) para despachar eventos dentro de la misma transacción.

<b>D) Configuración & migraciones</b>

- **Config:** `PersistenceConfig`, `AzureIoTHubConfig`.
- **Migraciones:** `db/migration` (Flyway/Liquibase) con DDL para la tabla `devices`.
- **Observabilidad:** *logging* con `X-Request-Id`, métricas para `AzureIoTHubClientImpl`.

---
#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams

<b>A) Componentes y responsabilidades</b>

- **Device Management Facade**
  - **Capa:** Application (coordinación de casos de uso del BC).
  - **Responsabilidad:** Orquesta `CommandServices`/`QueryServices` y centraliza políticas transversales.
- **Device Component**
  - **Capa:** Application + Domain
  - **Responsabilidad:** Gestionar el agregado `Device`, aplicando las reglas de negocio e invariantes.
  - **Interfaces dominio usadas:** `DeviceRepository`, `DeviceProvisioner`, `SerialNumberUniquenessChecker`.
- **Device Repository**
  - **Capa:** Infrastructure (persistencia)
  - **Responsabilidad:** Adaptador de acceso a datos para el agregado `Device`.
  - **Tecnología:** Spring Data JPA sobre MySQL.
- **IoT Hub Client**
  - **Capa:** Infrastructure (cliente externo)
  - **Responsabilidad:** Implementa `DeviceProvisioner`. Se comunica con la plataforma IoT externa.
- **External Vehicle Context Service (ACL)**
  - **Capa:** Application/outboundservices/acl
  - **Responsabilidad:** Implementa `ExternalVehicleContextFacade` para obtener datos del BC de Flota de Vehículos de forma segura.

<b>B) Relaciones (resumen)</b>

- `Device Management Facade → Device Component`
- `Device Component → Device Repository` (→ MySQL)
- `Device Component → IoT Hub Client` (→ Azure/AWS IoT Hub)
- `Device Component → External Vehicle Context Service` (→ Vehicle Fleet BC)
- `Device Component → Domain Event Publisher`

<b>C) Mapeo a <b>nomenclaturas</b> y <b>paquetes</b></b>

- **Application/internal/commandservices**
  - `DeviceCommandServiceImpl`
- **Application/internal/queryservices**
  - `DeviceQueryServiceImpl`
- **Application/outboundservices/acl**
  - `ExternalVehicleContextService`
- **Interfaces/resources**
  - `RegisterDeviceResource`, `AssignDeviceResource`, etc.
- **Interfaces/transform (assemblers)**
  - `DeviceResourceFromEntityAssembler`
- **Infrastructure/persistence/jpa**
  - `DeviceRepositoryImpl`
- **Infrastructure/external/iot**
  - `AzureIoTHubClientImpl`
- **Infrastructure/events**
  - `DomainEventPublisherImpl`

<br/>

<img src="/assets/img/capitulo-IV/bc-device managment.png" alt="BC Device Management Container C4"/>

---
#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams

#### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams
<p align="justify">
El diagrama de clases ilustra el modelo de dominio del BC Device Management. Define el agregado `Device` como la pieza central, sus Value Objects asociados como `FirmwareVersion` y la enumeración `DeviceStatus`. También especifica los contratos (interfaces) que el dominio expone para la persistencia (`DeviceRepository`), servicios de dominio (`DeviceProvisioner`) y comunicación inter-BC (`ExternalVehicleContextFacade`), manteniendo el núcleo de negocio agnóstico a la implementación tecnológica.
</p>

<img src="/assets/img/capitulo-IV/bc-device-management-domain-class-diagram.png" alt="BC Device Management Domain Class Diagram"/>

<b>2) Agregado y VOs</b>
- **Device (Aggregate Root)**
  - Responsable de mantener su estado consistente a través de métodos como `assignToVehicle(...)` y `updateFirmware(...)`.
  - **Relaciones:**
    - `Device --> FirmwareVersion` («has a»): Usa el VO para representar la versión del firmware.
    - `Device --> DeviceStatus` («has a»): Usa el enum para gestionar su estado en el ciclo de vida.

<b>3) Puertos (Interfaces)</b>
- **`DeviceRepository`**: Define las operaciones de persistencia requeridas por el dominio. Su implementación en Infraestructura usará JPA.
- **`DeviceProvisioner`**: Abstrae la lógica de provisionamiento en una plataforma IoT externa. Permite cambiar de proveedor (ej. de Azure a AWS) sin alterar el dominio.
- **`ExternalVehicleContextFacade`**: Contrato para interactuar con el BC de Vehículos. Su implementación (ACL) en Application se encargará de la comunicación real (ej. REST).

<b>4) Eventos de Dominio</b>
- Se modelan como clases simples que contienen los datos relevantes del suceso.
- Una relación «about» los vincula con el agregado `Device` para indicar el sujeto del evento.

---
#### 4.2.1.6.2. Bounded Context Database Design Diagram

<b>1) Visión general</b>
<p align="justify">
El siguiente esquema de base de datos para MySQL soporta la persistencia del agregado `Device`. Está optimizado para consultas comunes, como buscar un dispositivo por su ID de serie o por el vehículo al que está asignado, y asegura la unicidad de los identificadores clave.
</p>

<img src="/assets/img/capitulo-IV/bc-device-management-database-diagram.png" alt="BC Device Management Database Design Diagram"/>

<b>2) Tablas principales</b>
- **devices**
  - Representa la raíz de agregado `Device`.
  - Atributos clave:
    - `id` (BIGINT, PK): Clave primaria técnica.
    - `device_id` (BINARY(16), UUID): Clave de negocio, única en la tabla.
    - `serial_number` (VARCHAR): Número de serie, debe ser único.
    - `model` (VARCHAR): Modelo del dispositivo.
    - `firmware_version` (VARCHAR): Versión actual del firmware.
    - `status` (VARCHAR): Estado del ciclo de vida del dispositivo.
    - `vehicle_id` (BINARY(16), UUID, NULLABLE): ID del vehículo al que está asignado.
    - `created_at`, `updated_at`: Control de auditoría.
  - **Constraints:** `UNIQUE(device_id)`, `UNIQUE(serial_number)`.

<b>3) Relaciones y cardinalidades</b>
- No existen relaciones con clave foránea (FK) a otras tablas de otros BCs para mantener un bajo acoplamiento a nivel de base de datos.
- La relación `Device 1 -- 0..1 Vehicle` es lógica y se mantiene a través del campo `vehicle_id`, que es gestionado por la capa de aplicación.

<b>4) Índices y constraints</b>
- **Índice Único en `device_id`** para garantizar la unicidad y acelerar las búsquedas por el identificador de negocio.
- **Índice Único en `serial_number`** para evitar registros duplicados y optimizar las búsquedas por este campo.
- **Índice en `vehicle_id`** para encontrar rápidamente el dispositivo asignado a un vehículo concreto.

<b>5) Decisiones de diseño</b>
- **Desacoplamiento de Base de Datos:** La ausencia de una FK a una tabla `vehicles` es una decisión consciente para que el BC sea autónomo y no dependa del esquema de otro BC. La integridad referencial se garantiza en la capa de Aplicación a través del `ExternalVehicleContextFacade`.
- **UUID como `BINARY(16)`:** Se utiliza el tipo de dato binario para almacenar UUIDs, lo cual es más eficiente en espacio y rendimiento de indexación que un `VARCHAR(36)`.
- **Estado como `VARCHAR`**: En lugar de un `ENUM` nativo de MySQL, se usa `VARCHAR` para facilitar la adición de nuevos estados en el futuro sin necesidad de una migración de esquema (`ALTER TABLE`).

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

**Propósito del BC**
Calcular riesgo del conductor, predecir fallas probables y generar recomendaciones de mantenimiento, garantizando invariantes y evitando invasión de dominio entre BCs.

<b>A) Agregado y Entidades (diccionario)</b>

- **Aggregate Root: `DriverProfile`**
  **Propósito:** concentrar reglas y estado del conductor (riesgo, predicciones, recomendaciones).
  **Invariantes:**
  - `RiskScore.value ∈ [0, 1]`
  - `PredictionConfidence.value ∈ [0, 1]`
  - `Recommendation` es inmutable.
  **Atributos:**
  - `driverId: UUID`
  - `riskScore: RiskScore`
  - `drivingStats: DrivingStats`
  - `predictions: List<Prediction>`
  - `recommendations: List<Recommendation>`
  **Métodos:**
  - `recalculateRisk(stats: DrivingStats): void`
  - `addPrediction(prediction: Prediction): void`
  - `addRecommendation(recommendation: Recommendation): void`

- **`Prediction`**
  **Propósito:** registrar una falla probable.
  **Atributos:** `id: UUID`, `predictedFault: String`, `confidence: PredictionConfidence`, `timestamp: LocalDateTime`
  **Métodos:** `updateConfidence(newConfidence: PredictionConfidence)`, `discard()`

- **`Recommendation`**
  **Propósito:** acción de mantenimiento sugerida (inmutable).
  **Atributos:** `id: UUID`, `recommendationText: String`, `timestamp: LocalDateTime`

<b>B) Value Objects (records/enums)</b>

- **`RiskScore` (record):** `value: float` (0..1)
- **`DrivingStats` (record):** `avgSpeed: float`, `harshAccelerations: int`, `harshBrakes: int`
- **`PredictionConfidence` (record):** `value: float` (0..1)
- **`RiskBand` (enum):** `LOW`, `MEDIUM`, `HIGH`

<b>C) Servicios de Dominio (interfaces)</b>

- **`RiskCalculator`** → `calculate(stats: DrivingStats): RiskScore`
- **`PredictionEngine`** → `predict(profile: DriverProfile): Prediction`
- **`RecommendationGenerator`** → `generate(profile: DriverProfile, prediction: Prediction): Recommendation`

> Implementaciones concretas fuera del dominio (Application/Infrastructure).

<b>D) Repositorios (puertos del dominio)</b>

- **`DriverProfileRepository`**
  - `save(profile: DriverProfile): DriverProfile`
  - `findByDriverId(driverId: UUID): Optional<DriverProfile>`

- **`PredictionRepository`**
  - `save(prediction: Prediction): Prediction`
  - `findById(id: UUID): Optional<Prediction>`
  - `findAllByDriverId(driverId: UUID): List<Prediction>`

- **`RecommendationRepository`**
  - `save(recommendation: Recommendation): Recommendation`
  - `findAllByDriverId(driverId: UUID): List<Recommendation>`

<b>E) Commands & Queries (records en dominio)</b>

**Commands**
- `CreateDriverProfileCommand(driverId: UUID, initialStats: DrivingStats)`
- `RecalculateRiskCommand(driverId: UUID, stats: DrivingStats)`
- `PredictFailureCommand(driverId: UUID)`
- `UpdatePredictionConfidenceCommand(predictionId: UUID, confidence: PredictionConfidence)`
- `DiscardPredictionCommand(predictionId: UUID)`
- `GenerateRecommendationCommand(driverId: UUID, predictionId: UUID)`

**Queries**
- `GetDriverProfileByDriverIdQuery(driverId: UUID)`
- `GetAllPredictionsByDriverIdQuery(driverId: UUID)`
- `GetAllRecommendationsByDriverIdQuery(driverId: UUID)`

> Las **implementaciones** de orquestación para estos comandos/consultas estarán en *Application* como `*CommandServiceImpl` / `*QueryServiceImpl` (p. ej., `PredictionCommandServiceImpl`), mientras que las **interfaces** de servicios se declaran en `domain/services`.

<b>F) Domain Events </b>

- `DriverRiskRecalculatedEvent` (driverId, oldRisk, newRisk, occurredOn)
- `PredictionCreatedEvent` (predictionId, driverId, occurredOn)
- `RecommendationGeneratedEvent` (recommendationId, driverId, occurredOn)

<b>G) Facade (contrato entre BCs)</b>

- **Interface en dominio:** `ExternalDriverContextFacade`
  **Propósito:** leer datos publicados por otros BCs sin invasión de dominio.
  **Métodos ejemplo:**
  - `fetchLatestDrivingStats(driverId: UUID): DrivingStats`
  - `existsDriver(driverId: UUID): boolean`

> La **implementación** vivirá en *Application/outboundservices/acl* con la nomenclatura: `ExternalDriverContextService` (análoga a tu ejemplo `ExternalProfileService`).

<b>H) Excepciones de Dominio</b>

- `DriverProfileNotFoundException`
- `InvalidRiskScoreException`
- `PredictionNotFoundException`

#### 4.2.4.2. Interface Layer
<b>A) Controladores (REST Controllers)</b>

1) **`DriverProfileController`**
- **Responsabilidad:** endpoints para crear perfil y recalcular riesgo.
- **Dependencias:** `DriverProfileCommandService`, `DriverProfileQueryService`, `DriverProfileResourceFromEntityAssembler`.
- **Rutas:**
  - `POST /api/v1/analytics/driver-profiles` – crear perfil
    - **Request:** `CreateDriverProfileResource`
    - **Command:** `CreateDriverProfileCommand`
    - **Response:** `DriverProfileResource`
  - `PUT /api/v1/analytics/driver-profiles/{driverId}/risk` – recalcular riesgo
    - **Request:** `RecalculateRiskResource`
    - **Command:** `RecalculateRiskCommand`
    - **Response:** `DriverProfileResource`
  - `GET /api/v1/analytics/driver-profiles/{driverId}` – obtener perfil
    - **Query:** `GetDriverProfileByDriverIdQuery`
    - **Response:** `DriverProfileResource`

2) **`PredictionController`**
- **Responsabilidad:** endpoints de gestión de predicciones.
- **Dependencias:** `PredictionCommandService`, `PredictionQueryService`, `PredictionResourceFromEntityAssembler`.
- **Rutas:**
  - `POST /api/v1/analytics/predictions` – predecir falla
    - **Request:** `PredictFailureResource`
    - **Command:** `PredictFailureCommand`
    - **Response:** `PredictionResource`
  - `PATCH /api/v1/analytics/predictions/{predictionId}/confidence` – actualizar confianza
    - **Request:** `UpdatePredictionConfidenceResource`
    - **Command:** `UpdatePredictionConfidenceCommand`
    - **Response:** `PredictionResource`
  - `DELETE /api/v1/analytics/predictions/{predictionId}` – descartar
    - **Command:** `DiscardPredictionCommand`
  - `GET /api/v1/analytics/predictions?driverId={driverId}` – listar por conductor
    - **Query:** `GetAllPredictionsByDriverIdQuery`
    - **Response:** `PredictionSummaryResource[]`

3) **`RecommendationController`**
- **Responsabilidad:** generación y consulta de recomendaciones.
- **Dependencias:** `RecommendationCommandService`, `RecommendationQueryService`, `RecommendationResourceFromEntityAssembler`.
- **Rutas:**
  - `POST /api/v1/analytics/recommendations` – generar recomendación
    - **Request:** `GenerateRecommendationResource`
    - **Command:** `GenerateRecommendationCommand`
    - **Response:** `RecommendationResource`
  - `GET /api/v1/analytics/recommendations?driverId={driverId}` – listar por conductor
    - **Query:** `GetAllRecommendationsByDriverIdQuery`
    - **Response:** `RecommendationResource[]`

---

<b>B) Resources (DTOs de entrada/salida)</b>

Ubicación: `interfaces/resources`

**Requests**
- `CreateDriverProfileResource { driverId: string, initialStats: DrivingStatsResource }`
- `RecalculateRiskResource { stats: DrivingStatsResource }`
- `PredictFailureResource { driverId: string }`
- `UpdatePredictionConfidenceResource { confidence: number }`
- `GenerateRecommendationResource { driverId: string, predictionId: string }`

**Responses**
- `DriverProfileResource { driverId: string, riskScore: number, riskBand: string, drivingStats: DrivingStatsResource, predictions: PredictionSummaryResource[], recommendations: RecommendationResource[] }`
- `PredictionResource { id: string, driverId: string, predictedFault: string, confidence: number, timestamp: string }`
- `PredictionSummaryResource { id: string, predictedFault: string, confidence: number, timestamp: string }`
- `RecommendationResource { id: string, driverId: string, recommendationText: string, timestamp: string }`
- `DrivingStatsResource { avgSpeed: number, harshAccelerations: number, harshBrakes: number }`

> **Validaciones** (Bean Validation):
> `@NotNull`, `@PositiveOrZero`, `@DecimalMin("0.0") @DecimalMax("1.0")` para `confidence` y `riskScore`.

---

<b>C) Assemblers (mapeadores)</b>

Ubicación: `interfaces/transform`

- **`DriverProfileResourceFromEntityAssembler`**
  - `toResource(DriverProfile domain): DriverProfileResource`
  - `toDomain(CreateDriverProfileResource r): CreateDriverProfileCommand`
  - `toDomain(RecalculateRiskResource r, UUID driverId): RecalculateRiskCommand`

- **`PredictionResourceFromEntityAssembler`**
  - `toResource(Prediction domain): PredictionResource`
  - `toDomain(PredictFailureResource r): PredictFailureCommand`
  - `toDomain(UpdatePredictionConfidenceResource r, UUID predictionId): UpdatePredictionConfidenceCommand`

- **`RecommendationResourceFromEntityAssembler`**
  - `toResource(Recommendation domain): RecommendationResource`
  - `toDomain(GenerateRecommendationResource r): GenerateRecommendationCommand`

> Los *Assemblers* son **puentes** entre DTOs y el modelo del dominio (records/commands/queries).
> Los *Controller* **no** construyen entidades/commands manualmente; delegan al *Assembler*.

---

<b>D) Manejo de errores y contrato</b>

- Respuestas de error estandarizadas (`Problem+JSON`):
  - `400` errores de validación.
  - `404` (`DriverProfileNotFoundException`, `PredictionNotFoundException`).
  - `422` reglas de negocio (p. ej., `InvalidRiskScoreException`).
  - `500` errores no controlados.
- Correlación de peticiones: encabezado `X-Request-Id`.
- Versionado de API: prefijo `/api/v1` y *content negotiation* (`application/json`).


#### 4.2.4.3. Application Layer

<b>A) Command Services (implementaciones)</b>

1) **`DriverProfileCommandServiceImpl`** (`application/internal/commandservices`)
- **create(cmd: CreateDriverProfileCommand): DriverProfile**
  1. Verifica existencia de conductor vía `ExternalDriverContextService.existsDriver`.
  2. Construye `DriverProfile` con `initialStats`.
  3. Calcula `riskScore` usando `RiskCalculator`.
  4. `driverProfileRepository.save(..)` y publica `DriverRiskRecalculatedEvent`.
- **recalculateRisk(cmd: RecalculateRiskCommand): RiskScore**
  1. Carga perfil por `driverId`.
  2. Si `stats` es `null`, consulta `ExternalDriverContextService.fetchLatestDrivingStats`.
  3. Invoca `driverProfile.recalculateRisk(stats)` y persiste.
  4. Publica `DriverRiskRecalculatedEvent` y retorna nuevo `RiskScore`.

2) **`PredictionCommandServiceImpl`**
- **predict(cmd: PredictFailureCommand): Prediction**
  1. Carga `DriverProfile`.
  2. Usa `PredictionEngine.predict(profile)`.
  3. `predictionRepository.save(..)`, asocia al perfil y publica `PredictionCreatedEvent`.
- **updateConfidence(cmd: UpdatePredictionConfidenceCommand): Prediction**
  1. Carga predicción; ejecuta `updateConfidence`.
  2. Persiste cambios.
- **discard(cmd: DiscardPredictionCommand): void**
  1. Carga predicción; ejecuta `discard()` y persiste.

3) **`RecommendationCommandServiceImpl`**
- **generate(cmd: GenerateRecommendationCommand): Recommendation**
  1. Carga `DriverProfile` y `Prediction`.
  2. Usa `RecommendationGenerator` (puede delegar a `OpenAiClient` vía infraestructura).
  3. Guarda `Recommendation` en `recommendationRepository`.
  4. Publica `RecommendationGeneratedEvent`.

> **Nota:** los *CommandServiceImpl* dependen de **interfaces de dominio**: `DriverProfileRepository`, `PredictionRepository`, `RecommendationRepository`, `RiskCalculator`, `PredictionEngine`, `RecommendationGenerator` y del **Facade** `ExternalDriverContextFacade` (implementado aquí como ACL).

<b>B) Query Services (implementaciones)</b>

1) **`DriverProfileQueryServiceImpl`**
- **handle(q: GetDriverProfileByDriverIdQuery): Optional<DriverProfile>** → lectura consistente desde `DriverProfileRepository`.

2) **`PredictionQueryServiceImpl`**
- **handle(q: GetAllPredictionsByDriverIdQuery): List<Prediction>**

3) **`RecommendationQueryServiceImpl`**
- **handle(q: GetAllRecommendationsByDriverIdQuery): List<Recommendation>**

> **Optimización opcional:** proyecciones/DTOs de lectura o *read models* si se requiere performance.

<b>C) Event Handlers</b>

Ubicación: `application/internal/eventhandlers`

- **`NotifyHighRiskEventHandler`**
  - **Escucha:** `DriverRiskRecalculatedEvent`
  - **Acción:** si `RiskBand` es `HIGH`, delega a infraestructura (TwilioClient/Email) para notificar.
- **`AutoGenerateRecommendationOnPredictionHandler`**
  - **Escucha:** `PredictionCreatedEvent`
  - **Acción:** invoca `RecommendationCommandService.generate(..)` para crear recomendación automática.
- **`AuditRecommendationGeneratedHandler`**
  - **Escucha:** `RecommendationGeneratedEvent`
  - **Acción:** registra auditoría (tabla/log).

> **Publicación de eventos:** los *CommandServiceImpl* publican eventos de dominio mediante un `DomainEventPublisher` (puerto) con implementación en infraestructura o usando *ApplicationEventPublisher* de Spring.

<b>D) Outbound Services / ACL (Facade entre BCs)</b>

Ubicación: `application/outboundservices/acl`

- **Interface en dominio:** `ExternalDriverContextFacade`
- **Implementación (ACL):** **`ExternalDriverContextService`**
  - **existsDriver(driverId: UUID): boolean** — consulta segura al BC *Driver Engagement* (o IAM) mediante API interna.
  - **fetchLatestDrivingStats(driverId: UUID): DrivingStats** — obtiene agregados de telemetría del BC *Telemetry Processing* sin acoplar modelos (traduce DTO externo → `DrivingStats`).
  - **Manejo de fallos:** *timeouts*, *circuit breaker*, *fallback* (retornar `Optional<DrivingStats>`).

> Esta capa evita invasión de dominio traduciendo contratos externos a **Value Objects** del dominio.

#### 4.2.4.4. Infrastructure Layer

<b>A) Persistencia (JPA / MySQL)</b>

**Entidades JPA (solo para persistencia):**
- `DriverProfileEntity` ↔ tabla `driver_profiles`
- `PredictionEntity` ↔ tabla `predictions`
- `RecommendationEntity` ↔ tabla `recommendations`

**Repositorios Spring Data (infra):**
- `DriverProfileJpaRepository extends JpaRepository<DriverProfileEntity, Long>`
  - `Optional<DriverProfileEntity> findByDriverId(UUID driverId)`
- `PredictionJpaRepository extends JpaRepository<PredictionEntity, Long>`
  - `List<PredictionEntity> findAllByDriverId(UUID driverId)`
- `RecommendationJpaRepository extends JpaRepository<RecommendationEntity, Long>`
  - `List<RecommendationEntity> findAllByDriverId(UUID driverId)`

**Adaptadores que implementan puertos del dominio:**
- `DriverProfileRepositoryImpl implements DriverProfileRepository`
  - Usa `DriverProfileJpaRepository` + *mappers* para convertir **Entity ↔ Aggregate**.
- `PredictionRepositoryImpl implements PredictionRepository`
- `RecommendationRepositoryImpl implements RecommendationRepository`

**Mappers (infra/persistence/mapping):**
- `DriverProfileMapper`
  - `toEntity(DriverProfile)` / `toAggregate(DriverProfileEntity)`
- `PredictionMapper`
- `RecommendationMapper`

**Transaccionalidad y consistencia:**
- Métodos de `*RepositoryImpl` son invocados dentro de transacciones iniciadas en *Application* (`@Transactional`).
- Estrategia de *optimistic locking* opcional vía `@Version` en entidades.

<b>B) Integración con servicios externos</b>

**Cliente OpenAI (infra/external/openai):**
- `OpenAiClientImpl implements OpenAiClient`
  - HTTP con `WebClient` o `RestTemplate`.
  - *Configuración:* `OPENAI_BASE_URL`, `OPENAI_API_KEY` (en `infrastructure/config`).
  - *Resiliencia:* *timeouts*, *retry*, *circuit breaker* (Resilience4j).
  - *Responsabilidad:* construir prompts y mapear respuesta → texto para `RecommendationGenerator`.

**Cliente de notificaciones (opcional para eventos de alto riesgo):**
- `TwilioEmailClientImpl`
  - Enviar correo/SMS cuando lo dispare un *EventHandler*.
  - Variables seguras vía `TWILIO_ACCOUNT_SID`, `TWILIO_TOKEN`.

<b>C) Publicación de eventos</b>

**Adaptador:** `DomainEventPublisherImpl` (infra/events)
- Implementa puerto `DomainEventPublisher` (de aplicación o dominio).
- Usa `ApplicationEventPublisher` (Spring) o una cola si se requiere (ej. RabbitMQ en futuro).
- Serializa eventos (`DriverRiskRecalculatedEvent`, `PredictionCreatedEvent`, `RecommendationGeneratedEvent`) para auditoría.

<b>D) Configuración & migraciones</b>

- **Config:** `OpenAiClientConfig`, `PersistenceConfig` (nombres de paquetes, `JpaRepositories`, `EntityScan`).
- **Migraciones:** `db/migration` (Flyway/Liquibase) con DDL para `driver_profiles`, `predictions`, `recommendations`.
- **Observabilidad:** *logging* con `X-Request-Id`, métricas para `OpenAiClientImpl` (latencia, errores).


#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams

<b>A) Componentes y responsabilidades</b>

- **Analytics Facade**
  - **Capa:** Application (coordinación de casos de uso del BC).
  - **Responsabilidad:** Punto de entrada interno del BC; orquesta *CommandServices*/*QueryServices* y centraliza políticas transversales (transacciones, logging, trazas).
  - **Depende de:** `DriverProfileCommandServiceImpl`, `PredictionCommandServiceImpl`, `RecommendationCommandServiceImpl`.

- **Driver Profile Component**
  - **Capa:** Application + Domain
  - **Responsabilidad:** Crear/actualizar `DriverProfile`, recalcular riesgo usando `RiskCalculator`.
  - **Interfaces dominio usadas:** `DriverProfileCommandService`/`DriverProfileQueryService`, `DriverProfileRepository`, `RiskCalculator`.
  - **Infra usada:** `DriverProfileRepositoryImpl` (JPA).

- **Prediction Component**
  - **Capa:** Application + Domain
  - **Responsabilidad:** Ejecutar predicciones con `PredictionEngine`; actualizar confianza; descartar.
  - **Interfaces dominio usadas:** `PredictionCommandService`/`PredictionQueryService`, `PredictionRepository`, `PredictionEngine`.
  - **Infra usada:** `PredictionRepositoryImpl` (JPA).

- **Recommendation Component**
  - **Capa:** Application + Domain
  - **Responsabilidad:** Generar recomendaciones con `RecommendationGenerator` (puede delegar en OpenAI a través del cliente infra).
  - **Interfaces dominio usadas:** `RecommendationCommandService`/`RecommendationQueryService`, `RecommendationRepository`, `RecommendationGenerator`.
  - **Infra usada:** `RecommendationRepositoryImpl` (JPA), `OpenAiClientImpl`.

- **Analytics Repository** *(ver refactor abajo)*
  - **Capa:** Infrastructure (persistencia)
  - **Responsabilidad:** Adaptador de acceso a datos para los agregados del BC.
  - **Tecnología:** Spring Data JPA sobre MySQL.

- **OpenAI Client**
  - **Capa:** Infrastructure (cliente HTTP externo)
  - **Responsabilidad:** Invocar al **OpenAI Service** para generar texto de recomendaciones; resiliencia (timeouts/retry/circuit-breaker).
  - **Tecnología:** Spring WebClient/RestTemplate.

- **(Sugerido) External Driver Context Service (ACL/Facade)**
  - **Capa:** Application/outboundservices/acl
  - **Responsabilidad:** Implementa `ExternalDriverContextFacade` para obtener `DrivingStats` y validar existencia de conductor desde otros BCs sin invadir dominio.
  - **Tecnología:** HTTP client interno/feign.

- **(Sugerido) Domain Event Publisher**
  - **Capa:** Infrastructure (events)
  - **Responsabilidad:** Publicación de `DriverRiskRecalculatedEvent`, `PredictionCreatedEvent`, `RecommendationGeneratedEvent`.
  - **Tecnología:** Spring Application Events (o broker futuro).

- **(Opcional) Twilio Email/SMS Client**
  - **Capa:** Infrastructure (external/notifications)
  - **Responsabilidad:** Enviar notificaciones cuando un *EventHandler* lo requiera.

<b>B) Relaciones (resumen)</b>

- `Analytics Facade → Driver Profile Component | Prediction Component | Recommendation Component`
- `Driver Profile Component → DriverProfileRepository` (→ MySQL)
- `Prediction Component → PredictionRepository` (→ MySQL)
- `Recommendation Component → RecommendationRepository` (→ MySQL)
- `Recommendation Component → OpenAI Client → OpenAI Service`
- `Driver Profile Component → (ACL) External Driver Context Service`
- `*Component → Domain Event Publisher` (publica eventos de dominio)

<b>C) Mapeo a <b>nomenclaturas</b> y <b>paquetes</b></b>

- **Application/internal/commandservices**
  - `DriverProfileCommandServiceImpl`, `PredictionCommandServiceImpl`, `RecommendationCommandServiceImpl`
- **Application/internal/queryservices**
  - `DriverProfileQueryServiceImpl`, `PredictionQueryServiceImpl`, `RecommendationQueryServiceImpl`
- **Application/outboundservices/acl**
  - `ExternalDriverContextService` *(impl de `ExternalDriverContextFacade`)*
- **Interfaces/resources**
  - `CreateDriverProfileResource`, `PredictFailureResource`, `GenerateRecommendationResource`, etc.
- **Interfaces/transform (assemblers)**
  - `DriverProfileResourceFromEntityAssembler`, `PredictionResourceFromEntityAssembler`, `RecommendationResourceFromEntityAssembler`
- **Infrastructure/persistence/jpa**
  - `DriverProfileRepositoryImpl`, `PredictionRepositoryImpl`, `RecommendationRepositoryImpl`
- **Infrastructure/external/openai**
  - `OpenAiClientImpl`
- **Infrastructure/events**
  - `DomainEventPublisherImpl`

<br/>

<img src="/assets/img/capitulo-IV/bc-analytics-and-recommendations-container-c4.svg" alt="BC Analytics and Recommendations Container C4"/>

#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams

#### 4.2.4.6.1. Bounded Context Domain Layer Class Diagrams
<p align="justify">
El diagrama modela el núcleo de negocio del BC Analytics & Recommendations dentro del monolito. Muestra entidades/agregado, value objects, interfaces (servicios de dominio, repositorios y façade inter-BC), la enumeración de riesgo y los eventos de dominio, con atributos/métodos y alcance (+ público, − privado), así como direcciones y multiplicidades en las relaciones.
</p>

<img src="/assets/img/capitulo-IV/bc-analytics-and-recommendations-domain-class-diagram.png" alt="BC Analytics and Recommendations Domain Class Diagram"/>

<b>2) Agregado y entidades (Core Model)</b>
- **DriverProfile (Aggregate Root)**
  Representa el estado analítico del conductor. Mantiene las invariantes y la consistencia de su grafo:
  - Atributos clave: `driverId` (+), `riskScore` (−, `RiskScore`), `drivingStats` (−, `DrivingStats`), colecciones (−) de `Prediction` y `Recommendation`.
  - Comportamientos: `recalculateRisk(...)`, `addPrediction(...)`, `addRecommendation(...)`.
  - **Relaciones:**
    - `DriverProfile "1" o-- "0..*" Prediction` y `Recommendation`: composición («contains») porque las vidas de predicciones/recomendaciones dependen del perfil.
    - `DriverProfile --> RiskScore` y `DrivingStats`: asociación de «tiene» («has»).

- **Prediction**
  Describe una **falla probable** estimada.
  - Atributos: `predictedFault` (+), `confidence` (−, `PredictionConfidence`), `timestamp` (+).
  - Métodos: `updateConfidence(newConfidence)`, `discard()`.
  - **Relación:** `Prediction --> PredictionConfidence` («has»).

- **Recommendation**
  Acción de **mantenimiento sugerida** (inmutable en dominio).
  - Atributos: `recommendationText` (+), `timestamp` (+).
  - No expone mutadores de negocio.

<b>3) Value Objects y Enum</b>
- **RiskScore**, **DrivingStats**, **PredictionConfidence** (<<ValueObject>>): encapsulan valores y validaciones de rango/consistencia; exponen `getValue()`/`of(...)` o métodos equivalentes.
- **RiskBand (enum)**: `LOW | MEDIUM | HIGH`.
  - **Relación:** `RiskScore --> RiskBand` («derives») para mapear un puntaje numérico a una banda de riesgo.

<b>4) Servicios de Dominio (Interfaces)</b>
- **RiskCalculator**: `calculate(DrivingStats): RiskScore`. Implementa reglas puras para riesgo.
- **PredictionEngine**: `predict(DriverProfile): Prediction`. Aplica heurísticas/modelos (sin acoplarse a infra).
- **RecommendationGenerator**: `generate(DriverProfile, Prediction): Recommendation`. Orquesta reglas de mantenimiento; su implementación puede delegar fuera del dominio (p. ej., cliente OpenAI en Infraestructura).
- **Relaciones:** flechas **de uso** («uses», «returns») muestran dirección desde el servicio hacia los tipos que consume/produce.

<b>5) Puertos de persistencia (Repositories)</b>
Interfaces **del dominio**:
- `DriverProfileRepository`, `PredictionRepository`, `RecommendationRepository`.
- Métodos públicos (+) especifican las **operaciones permitidas** sobre agregados/entidades.
- **Relaciones:** `Repository ..> Entity` con etiqueta «persists»; la implementación concreta vive en **Infrastructure** (adaptadores JPA) y no se muestra aquí para mantener el dominio **puro**.

<b>6) Façade inter-BC (Puerto)</b>
- **ExternalDriverContextFacade**: contrato para consultar datos de otros bounded contexts sin invadir el modelo (p. ej., `fetchLatestDrivingStats(driverId)`).
- **Relación:** `Facade ..> DrivingStats` («provides»), indicando que entrega VO del dominio; las traducciones DTO-externo → VO ocurren en la **ACL** de *Application*.

<b>7) Eventos de Dominio</b>
- `DriverRiskRecalculatedEvent`, `PredictionCreatedEvent`, `RecommendationGeneratedEvent`.
- **Relaciones «about»** hacia `DriverProfile`, `Prediction` o `Recommendation` dejan claro **sobre qué entidad** versa el evento.
- Se publican desde *Application* (CommandServiceImpl) por un **publisher** de infraestructura; aquí solo se modela el **contrato**.

<b>8) Multiplicidades y calificaciones</b>
- **Composición**: `1 — 0..*` entre `DriverProfile` y `Prediction/Recommendation` para reflejar propiedad y ciclo de vida ligado.
- **Asociaciones dirigidas**: flechas señalan **quién usa a quién** (servicios → tipos, repositorios → entidades, façade → VO).
- **Etiquetas** («contains», «has», «uses», «returns», «persists», «derives», «about») califican la **intención** de cada relación.

<b>9) Visibilidad (scope)</b>
- **Atributos privados (−)** en VO/entidades cuando se requiere invariantes (`RiskScore.value`, `Prediction.confidence`).
- **Operaciones públicas (+)** para comportamiento del agregado/entidades (`recalculateRisk`, `updateConfidence`) y para contratos (`interfaces`).
- Esto comunica explícitamente qué **se puede** y **qué no se puede** modificar desde fuera del agregado.

<b>10) Trazabilidad con las capas</b>
- **Domain**: todo lo mostrado (entidades, VO, repos, servicios, façade, eventos) son **contratos o modelos puros**.
- **Application/Infrastructure**: implementan **cómo** (CommandServiceImpl, RepositoryImpl JPA, OpenAI/Twilio clients, publisher), pero no alteran este modelo.

<b>11) Por qué este diseño cumple DDD en monolito</b>
- **Reglas de negocio** encapsuladas en el agregado/servicios.
- **Dependencias hacia adentro** (UI → Application → Domain) y puertos para infra (repos/façade), manteniendo bajo acoplamiento.
- **Expansión futura**: el monolito puede extraer este BC a un microservicio manteniendo estos **puertos** intactos.

##### 4.2.4.6.2. Bounded Context Database Design Diagram

<b>1) Visión general</b>
<p align="justify">
El esquema relacional define cómo se almacenan los objetos del dominio *Analytics & Recommendations* en **MySQL**. Se ha diseñado para mantener la integridad referencial, permitir consultas eficientes y soportar la evolución del modelo sin comprometer las reglas del dominio.
</p>

<img src="/assets/img/capitulo-IV/bc-analytics-and-recommendations-database-diagram.png" alt="BC Analytics and Recommendations Database Design Diagram"/>

<b>2) Tablas principales</b>
- **driver_profiles**
  - Representa la raíz de agregado `DriverProfile`.
  - Atributos clave:
    - `driver_id`: UUID del conductor, único en la tabla.
    - `risk_score`: valor actual de riesgo normalizado.
    - `driving_stats`: columna JSON para métricas agregadas de conducción (flexibilidad ante cambios de atributos).
    - `created_at`, `updated_at`: control de auditoría.
  - **Constraint:** `UNIQUE(driver_id)` asegura que cada conductor tenga un único perfil.

- **predictions**
  - Representa instancias de `Prediction`.
  - Atributos clave:
    - `driver_profile_id`: FK → `driver_profiles.id` para asegurar pertenencia al perfil.
    - `driver_id`: redundancia para acelerar consultas directas por conductor.
    - `predicted_fault`, `confidence`, `timestamp`.
  - **Índices:** combinados en `(driver_id, timestamp)` para consultas de historial en orden temporal.

- **recommendations**
  - Representa instancias de `Recommendation`.
  - Atributos clave:
    - `driver_profile_id`: FK → `driver_profiles.id`.
    - `driver_id`: redundancia para consultas.
    - `recommendation_text`, `timestamp`.
  - **Índices:** similares a `predictions` para optimizar consultas por conductor y fecha.

<b>3) Relaciones y cardinalidades</b>
- **driver_profiles 1 — N predictions**
  Cada perfil puede tener múltiples predicciones asociadas.
- **driver_profiles 1 — N recommendations**
  Cada perfil puede tener múltiples recomendaciones asociadas.
- **Restricciones ON DELETE RESTRICT**
  Evitan eliminar perfiles con predicciones/recomendaciones, garantizando la trazabilidad histórica.

<b>4) Índices y constraints</b>
- **Índices en `driver_id` y `timestamp`** optimizan consultas frecuentes (ej. “todas las predicciones del último mes para un conductor”).
- **Foreign Keys con ON UPDATE CASCADE** aseguran consistencia si cambia el `id` del perfil (raro, pero soportado).
- **Columnas JSON en `driving_stats`** permiten flexibilidad en las métricas sin necesidad de alterar el esquema frecuentemente.

<b>5) Decisiones de diseño</b>
- **Normalización:** entidades principales (`DriverProfile`, `Prediction`, `Recommendation`) en tablas separadas.
- **Desnormalización controlada:** duplicación de `driver_id` en `predictions` y `recommendations` para queries rápidas sin `JOIN`.
- **Escalabilidad:** uso de índices compuestos (`driver_id, timestamp`) y JSON para evitar migraciones disruptivas.
- **Trazabilidad:** no se borran predicciones/recomendaciones automáticamente; se mantiene historial completo.

<b>6) Alineación con el dominio</b>
- Las tablas corresponden directamente a las entidades del dominio.
- Los value objects (`RiskScore`, `DrivingStats`, `PredictionConfidence`) se almacenan como tipos primitivos (`DECIMAL`, `JSON`) en columnas específicas.
- Los eventos de dominio no se materializan en tablas propias, pero pueden ser persistidos en una tabla de **event store** aparte si se requiere.


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
**Propósito del BC**
Gestionar la **operación del taller**: agenda de servicios, órdenes de trabajo y asignación de recursos (mecánicos/bahías), garantizando disponibilidad y trazabilidad del servicio.

**A) Agregados y Entidades (diccionario)**

- **Aggregate Root: `Workshop`**
  **Propósito:** representar un taller con su oferta y capacidades.
  **Invariantes:** (i) horarios válidos (`open < close`), (ii) `ServiceCatalogItem.code` único por taller.
  **Atributos (clave):** `workshopId: UUID`, `name`, `address`, `openingHours: WeeklyHours`, `serviceCatalog: List<ServiceCatalogItem>`, `resources: List<WorkshopResource>`.

- **Aggregate Root: `WorkOrder`**
  **Propósito:** ciclo de vida de una **orden de servicio**.
  **Estados:** `REQUESTED → SCHEDULED → IN_PROGRESS → COMPLETED` (o `CANCELLED`).
  **Invariantes:** no se puede iniciar si no está `SCHEDULED`; una orden `COMPLETED` es inmutable.
  **Atributos:** `workOrderId: UUID`, `workshopId: UUID`, `vehicleId: UUID`, `driverId: UUID`, `requestedServices: List<ServiceItem>`, `scheduledSlot: TimeSlot?`, `assigned: Assignment?`, `status: WorkOrderStatus`, `estimatedCost: Money`, `notes: String?`.

- **Entidad: `Appointment`** (si se usa reserva separada)
  `appointmentId`, `workshopId`, `vehicleId`, `driverId`, `slot: TimeSlot`, `status: AppointmentStatus`.

- **Entidad: `WorkshopResource`**
  `resourceId: UUID`, `type: ResourceType (MECHANIC|BAY)`, `name`, `skills: Set<ServiceCode>`.

**B) Value Objects**
`WeeklyHours`, `TimeSlot(start, end)`, `ServiceCode`, `Money(amount, currency)`, `Assignment(mechanicId, bayId)`, `ServiceItem(code, laborMinutes)`.

**C) Servicios de Dominio (interfaces)**
- `SchedulingPolicy` → `findFirstAvailableSlot(workshopId, services, after: Instant): TimeSlot`
- `AssignmentPolicy` → `selectResources(workshopId, services, slot): Assignment`
- `CostEstimator` → `estimate(services, laborRates, parts): Money`

**D) Repositorios (puertos de dominio)**
`WorkshopRepository`, `WorkOrderRepository`, (opc.) `AppointmentRepository`.

**E) Commands & Queries (records)**
**Commands:** `CreateWorkshop`, `AddServiceToCatalog`, `CreateAppointment`, `ScheduleWorkOrder`, `StartWorkOrder`, `CompleteWorkOrder`, `CancelWorkOrder`, `RescheduleAppointment`.
**Queries:** `GetWorkshopSchedule`, `GetNextAvailableSlot`, `GetWorkOrdersByWorkshop`, `GetWorkOrderDetails`.

**F) Domain Events**
`AppointmentRequested`, `AppointmentScheduled`, `WorkOrderCreated`, `WorkOrderStarted`, `WorkOrderCompleted`, `WorkOrderCancelled`, `WorkOrderRescheduled`.

**G) Facades entre BCs (puertos)**
- `ExternalDriverFacade` → `existsDriver(driverId)`, `getVehicleBasic(vehicleId)` (*Driver Engagement*).
- `ExternalBillingFacade` → `openInvoiceFor(workOrderId, amount)` (*Admin & Billing*).
- (Opc.) `ExternalAlertingFacade` para cerrar alertas asociadas.

**H) Excepciones de Dominio**
`InvalidTimeSlotException`, `NoResourcesAvailableException`, `WorkOrderStateException`, `WorkshopNotFoundException`.

#### 4.2.6.2. Interface Layer
**A) REST Controllers**

1) **`WorkshopsController`**
- `POST /api/v1/workshops` → `CreateWorkshop`
- `POST /api/v1/workshops/{id}/catalog` → `AddServiceToCatalog`
- `GET  /api/v1/workshops/{id}/schedule?from=&to=` → `GetWorkshopSchedule`

2) **`AppointmentsController`**
- `POST /api/v1/workshops/{id}/appointments` → `CreateAppointment`
- `PUT  /api/v1/appointments/{appointmentId}/reschedule` → `RescheduleAppointment`
- `DELETE /api/v1/appointments/{appointmentId}` → `CancelWorkOrder`

3) **`WorkOrdersController`**
- `POST /api/v1/workshops/{id}/work-orders` → `ScheduleWorkOrder`
- `PUT  /api/v1/work-orders/{id}/start` → `StartWorkOrder`
- `PUT  /api/v1/work-orders/{id}/complete` → `CompleteWorkOrder`
- `GET  /api/v1/workshops/{id}/work-orders?status=` → `GetWorkOrdersByWorkshop`
- `GET  /api/v1/work-orders/{id}` → `GetWorkOrderDetails`

**B) DTOs**
`CreateWorkshopResource`, `ServiceCatalogItemResource`, `CreateAppointmentResource(driverId, vehicleId, services[], preferredWindow)`,
`ScheduleWorkOrderResource(appointmentId?, services[], preferredWindow)`, `WorkOrderResource(id, status, slot, assignment, estimatedCost, services[])`.

**C) Assemblers**
`WorkshopResourceAssembler`, `AppointmentResourceAssembler`, `WorkOrderResourceAssembler`.

**D) Errores (contrato)**
`Problem+JSON`, `400` validación, `404` no encontrado, `409` conflicto de agenda, `422` reglas de negocio.


#### 4.2.6.3. Application Layer

**Command Services**
- `WorkshopCommandService` → `createWorkshop`, `addServiceToCatalog`
- `AppointmentCommandService` → `create`, `reschedule`, `cancel`
- `WorkOrderCommandService` → `schedule`, `start`, `complete`, `cancel`
  - En `complete(..)`: calcula costo (via `CostEstimator`) y **publica** `WorkOrderCompleted(amount)`.

**Query Services**
`WorkshopQueryService`, `WorkOrderQueryService`.

**Event Handlers**
- `OnAppointmentRequested` → intenta `ScheduleWorkOrder`.
- `OnWorkOrderCompleted` → `ExternalBillingFacade.openInvoiceFor(..)`.

**ACL / Outbound**
`ExternalDriverService` (impl de `ExternalDriverFacade`), `ExternalBillingService` (impl de `ExternalBillingFacade`).

#### 4.2.6.4. Infrastructure Layer

**Persistencia (JPA/MySQL)**
- `WorkshopEntity(id, name, address, openingHoursJson)`
- `ServiceCatalogItemEntity(id, workshopId, code, name, laborMinutes, basePrice)`
- `WorkOrderEntity(id, workshopId, driverId, vehicleId, status, slotStart, slotEnd, estimatedAmount, currency, createdAt, updatedAt)`
- `WorkOrderServiceEntity(workOrderId, code, laborMinutes, price, currency)`
- `ResourceEntity(id, workshopId, type, name, skillsJson)`
Repos `*JpaRepository` + adaptadores `*RepositoryImpl` (mappers Entity ⇄ Aggregate).
Migraciones con Flyway/Liquibase. Índices: `(workshop_id, status, slot_start)`.

**Integraciones**
- (Opc.) Email/SMS al confirmar cita (cliente Twilio).
- Observabilidad y métricas de tiempos de agendado.

#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams

**Componentes (y responsabilidades):**
- **Scheduling Component** (Application+Domain): orquesta `SchedulingPolicy` y repos.
- **Work Orders Component** (Application+Domain): gestiona ciclo de vida de órdenes.
- **Catalog Component** (Application+Domain): catálogo y recursos.
- **Persistence Adapter** (Infrastructure): JPA para Workshop/WorkOrder.
- **Driver ACL / Billing ACL** (Application outbound): integración inter-BC.

<img src="/assets/img/capitulo-IV/BC-Workshop.png" alt="BC Workshop Container C4"/>

#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams


#### 4.2.6.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.6.6.2. Bounded Context Database Design Diagram

Diagram

Tablas:
- `workshops(id PK, name, address, opening_hours JSON, created_at)`
- `service_catalog_items(id PK, workshop_id FK, code, name, labor_minutes, base_price, currency, UNIQUE(workshop_id, code))`
- `work_orders(id PK, workshop_id FK, driver_id, vehicle_id, status, slot_start, slot_end, estimated_amount, currency, created_at, updated_at)`
- `work_order_services(id PK, work_order_id FK, code, labor_minutes, price, currency)`
- `workshop_resources(id PK, workshop_id FK, type, name, skills JSON)`
Índices: `workshop_id`, `status`, `(slot_start, slot_end)`.


### 4.2.7. Bounded Context: Admin and Billing
#### 4.2.7.1. Domain Layer

**Propósito del BC**
Administrar **planes, suscripciones, facturación y pagos** para conductores y talleres; integrar con **pasarela de pagos** e impuestos.

**A) Agregados y Entidades**

- **Aggregate Root: `Plan`**
  `planId`, `name`, `features: Set<FeatureFlag>`, `price: Money`, `billingCycle: BillingCycle (MONTHLY|YEARLY)`, `currency`, `active`.

- **Aggregate Root: `Subscription`**
  `subscriptionId`, `accountId`, `planId`, `status: SubscriptionStatus (ACTIVE|PAST_DUE|CANCELLED)`, `startDate`, `currentPeriodEnd`, `paymentMethodRef`, `trialEndsAt?`.
  **Reglas:** prorrateo al cambiar de plan; no cobrar fuera de ciclo.

- **Aggregate Root: `Invoice`**
  `invoiceId`, `accountId`, `periodStart`, `periodEnd`, `lines: List<InvoiceLine>`, `subtotal: Money`, `taxes: Money`, `total: Money`, `status: InvoiceStatus (OPEN|PAID|VOID|FAILED)`.

- **Entidad: `Payment`**
  `paymentId`, `invoiceId`, `amount: Money`, `provider: PaymentProvider`, `providerRef`, `status: PaymentStatus (PENDING|SUCCEEDED|FAILED|REFUNDED)`.

- **Entidad: `Account`**
  `accountId`, `type (DRIVER|WORKSHOP)`, `email`, `taxId?`, `billingAddress?`.

**B) Value Objects**
`Money`, `Percentage`, `BillingCycle`, `TaxRate`, `Coupon(code, percentOff?)`, `PaymentMethodToken`.

**C) Servicios de Dominio**
- `BillingService` → `generateInvoice(subscriptionId, period): Invoice`
- `ProrationService` → `prorate(oldPlan, newPlan, remainingDays): Money`
- `TaxService` → `applyTaxes(subtotal, country): Money`
- `PaymentProcessor` (puerto) → `charge(invoiceId, amount, token): PaymentResult`

**D) Repositorios (puertos)**
`PlanRepository`, `SubscriptionRepository`, `InvoiceRepository`, `PaymentRepository`, `AccountRepository`.

**E) Commands & Queries**
**Commands:** `CreatePlan`, `CreateSubscription`, `ChangePlan`, `CancelSubscription`, `GenerateInvoice`, `ChargeInvoice`, `RefundPayment`.
**Queries:** `GetActiveSubscriptionByAccount`, `ListInvoicesByAccount`, `GetInvoiceDetails`, `GetPlans`.

**F) Domain Events**
`SubscriptionCreated`, `SubscriptionCancelled`, `InvoiceGenerated`, `PaymentSucceeded`, `PaymentFailed`, `PaymentRefunded`.

**G) Facades**
- `ExternalIAMFacade` → validar identidad/correo.
- **BillingFacade (expuesto a otros BCs):** `openInvoiceFor(workOrderId, amount)` para *Workshop Operations*.

**H) Excepciones**
`InvalidPlanException`, `SubscriptionNotActiveException`, `InvoiceAlreadyPaidException`, `PaymentGatewayException`.


#### 4.2.7.2. Interface Layer

**A) REST Controllers**

1) **`PlansController`**
- `POST /api/v1/billing/plans` → `CreatePlan`
- `GET  /api/v1/billing/plans` → `GetPlans`

2) **`SubscriptionsController`**
- `POST /api/v1/billing/subscriptions` → `CreateSubscription`
- `PUT  /api/v1/billing/subscriptions/{id}/change-plan` → `ChangePlan`
- `DELETE /api/v1/billing/subscriptions/{id}` → `CancelSubscription`
- `GET  /api/v1/billing/subscriptions/active?accountId=` → `GetActiveSubscriptionByAccount`

3) **`InvoicesController`**
- `POST /api/v1/billing/invoices` → `GenerateInvoice`
- `POST /api/v1/billing/invoices/{id}/charge` → `ChargeInvoice`
- `POST /api/v1/billing/invoices/{id}/refund` → `RefundPayment`
- `GET  /api/v1/billing/invoices?accountId=` → `ListInvoicesByAccount`
- `GET  /api/v1/billing/invoices/{id}` → `GetInvoiceDetails`

**B) DTOs**
`PlanResource`, `CreatePlanResource`,
`CreateSubscriptionResource(accountId, planId, paymentMethodToken)`,
`ChangePlanResource(newPlanId)`,
`InvoiceResource(id, total, status, periodStart, periodEnd, lines[])`,
`ChargeInvoiceResource(paymentMethodToken)`.

**C) Assemblers**
`PlanResourceAssembler`, `SubscriptionResourceAssembler`, `InvoiceResourceAssembler`.

**D) Errores (contrato)**
`400` validación, `402` *Payment Required*, `404`, `409` conflictos, `422` reglas (prorrateo/estado).


#### 4.2.7.3. Application Layer

**Command Services**
- `PlanCommandService` → alta/edición de planes.
- `SubscriptionCommandService` → create/change/cancel (incluye prorrateo).
- `InvoicingCommandService` → `generate`, `charge`, `refund` (usa `PaymentProcessor`).

**Query Services**
`SubscriptionQueryService`, `InvoiceQueryService`, `PlanQueryService`.

**Event Handlers**
- `OnWorkOrderCompleted` (desde *Workshop Operations*): `GenerateInvoice(accountId, amount)` y luego `ChargeInvoice`.
- `OnPaymentSucceeded` → marcar factura como `PAID`, emitir recibo.
- `OnPaymentFailed` → marcar `PAST_DUE`, notificar.

**ACL / Outbound**
- `StripePaymentProcessor` o `MercadoPagoPaymentProcessor` (impl de `PaymentProcessor`) con *timeouts/retry/circuit-breaker*.
- (Opc.) `TaxServiceClient`.


#### 4.2.7.4. Infrastructure Layer

**Persistencia (JPA/MySQL)**
- `plans(id, name, price_amount, currency, billing_cycle, active)`
- `accounts(id, type, email, tax_id, billing_address_json)`
- `subscriptions(id, account_id FK, plan_id FK, status, start_date, current_period_end, payment_method_ref, trial_ends_at)`
- `invoices(id, account_id FK, period_start, period_end, subtotal_amount, tax_amount, total_amount, currency, status, created_at)`
- `invoice_lines(id, invoice_id FK, description, quantity, unit_price_amount, currency)`
- `payments(id, invoice_id FK, amount, currency, provider, provider_ref, status, created_at)`
Repos Spring Data + adaptadores `*RepositoryImpl`. Índices: `account_id`, `status`, `created_at`.

**Integraciones**
Cliente `Stripe/MercadoPago`; secretos en vault; (opc.) webhook receiver para `payment_intent.succeeded/failed`.


#### 4.2.7.5. Bounded Context Software Architecture Component Level Diagrams

**Componentes (y responsabilidades):**
- **Plans Component** — catálogo de planes.
- **Subscriptions Component** — altas/cambios/bajas, prorrateo.
- **Invoicing Component** — generación y estado de facturas.
- **Payments Component** — cargos y reembolsos (usa `PaymentProcessor`).
- **Persistence Adapter** — JPA MySQL.
- **Payment Gateway Adapter** — Stripe/MercadoPago (ACL).
- **Billing API** — controladores REST.

<img src="/assets/img/capitulo-IV/BC-Billing.png" alt="BC Billing Container C4"/>

#### 4.2.7.6. Bounded Context Software Architecture Code Level Diagrams



#### 4.2.7.6.1. Bounded Context Domain Layer Class Diagrams

Incluir: `Plan`, `Subscription`, `Invoice` (con `InvoiceLine`), `Payment`, VOs (`Money`, `Percentage`, `BillingCycle`, `TaxRate`), servicios (`BillingService`, `ProrationService`, `TaxService`, `PaymentProcessor`), repos y eventos (`InvoiceGenerated`, `PaymentSucceeded`, `PaymentFailed`).


##### 4.2.7.6.2. Bounded Context Database Design Diagram

Relaciones:
- `accounts 1—N subscriptions`
- `subscriptions 1—N invoices`
- `invoices 1—N invoice_lines`
- `invoices 1—N payments`
Índices por `account_id`, `status`, `(period_start, period_end)`; FKs con `ON UPDATE CASCADE`, `ON DELETE RESTRICT`.

### 4.2.8. Bounded Context: Security and Compliance
#### 4.2.8.1. Domain Layer
#### 4.2.8.2. Interface Layer
#### 4.2.8.3. Application Layer
#### 4.2.8.4. Infrastructure Layer
#### 4.2.8.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.8.6. Bounded Context Software Architecture Code Level Diagrams
#### 4.2.8.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.8.6.2. Bounded Context Database Design Diagram
