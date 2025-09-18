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

### 4.1.2. Context Mapping

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
