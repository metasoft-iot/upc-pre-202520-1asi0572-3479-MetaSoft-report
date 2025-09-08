# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores

<p align="justify">
Después de realizar una investigación de mercado, hemos identificado tres competidores que ofrecen soluciones relacionadas con el mantenimiento vehicular y la gestión de talleres. Estas plataformas presentan características similares o alternativas a las que propone SafeCar para el mantenimiento preventivo y la conexión entre conductores y talleres. Los principales competidores son:
</p>

<table style="width:100%; border-collapse:collapse;">
	<tr>
		<td style="width:120px; vertical-align:center; text-align:center;">
			<img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" alt="Logo de AutoDoc" width="600"/>
		</td>
		<td style="vertical-align:top;">
			<b>1. AutoDoc Perú</b><br/>
			<p align="justify">
				AutoDoc es una aplicación que conecta a conductores con talleres mecánicos afiliados. Permite reservar citas en línea, cotizar servicios básicos y acceder a promociones dentro de su red de talleres. Es utilizada principalmente en Lima y ciudades principales, enfocándose en simplificar la experiencia de los usuarios al momento de encontrar un taller disponible.
			</p>
		</td>
	</tr>
	<tr>
		<td style="width:120px; vertical-align:center; text-align:center;">
			<img src="/assets/img/capitulo-II/drivana-logo.jpeg" alt="Logo de Drivana" width="600"/>
		</td>
		<td style="vertical-align:top;">
			<b>2. Drivana (LatAm)</b><br/>
			<p align="justify">
				Drivana es una plataforma presente en distintos países de Latinoamérica que ofrece recordatorios de mantenimiento, reservas de servicios y acceso a talleres aliados. Su propuesta está dirigida tanto a conductores individuales como a pequeñas flotas, destacando por su alcance regional y su enfoque en la experiencia digital del usuario.
			</p>
		</td>
	</tr>
	<tr>
		<td style="width:120px; vertical-align:center; text-align:center;">
			<img src="/assets/img/capitulo-II/obd-logo.png" alt="Logo de OBD-II" width="600"/>
		</td>
		<td style="vertical-align:top;">
			<b>3. Dispositivos OBD-II genéricos con apps móviles.</b><br/>
			<p align="justify">
				En el mercado existen múltiples dispositivos OBD-II de bajo costo que se conectan al puerto del vehículo y funcionan con aplicaciones móviles como Torque o Car Scanner. Estos ofrecen diagnósticos básicos (códigos de error, consumo de combustible, RPM), pero carecen de reportes avanzados, historial del vehículo o integración con talleres.
			</p>
		</td>
	</tr>
</table>

### 2.1.1. Análisis competitivo

<table>
  <tr>
  <th colspan="7" valign="top" align="justify"><b>Competitive Analysis Landscape</b></th>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" align="justify">¿Por qué llevar a cabo este análisis?</td>
    <td colspan="5" align="justify">
      Escriba en el recuadro la pregunta que busca responder o el objetivo de este análisis.
    </td>
  </tr>
  <tr>
  <td colspan="5" align="justify">
  Este análisis nos permite comprender mejor el mercado actual de mantenimiento vehicular en el Perú y Latinoamérica, evaluando las plataformas y dispositivos que ya ofrecen soluciones relacionadas con el diagnóstico y la gestión de servicios automotrices. Analizamos a los competidores directos e indirectos para identificar oportunidades en las que SafeCar pueda diferenciarse y posicionarse como una solución integral de mantenimiento preventivo.
  </td>
  </tr>
  <tr>
  <td colspan="3" align="justify">¿Por qué llevar acabo este análisis?</td>
  <td colspan="1" valign="top" style="font-weight: bold;" align="justify">
      SafeCar
      <div style="margin-top: 10px;" align="center">
                <img src="/assets/img/safecar-logo.png" alt="SafeCar Logo" width="100px">
            </div>
    </td>
  <td colspan="1" valign="top" style="font-weight: bold;" align="justify">
    Drivana (LatAm)
    <div style="margin-top: 20px;" align="center">
                <img src="/assets/img/capitulo-II/drivana-logo.jpeg" alt="Drivana (LatAm) Logo" width="80px">
        </div>
    </td>
  <td colspan="1" valign="top" style="font-weight: bold;" align="justify">
      OBD-II genéricos + apps
      <div style="margin-top: 10px;" align="center">
                <img src="/assets/img/capitulo-II/obd-logo.png" alt="OBD-II genéricos + apps Logo" width="100px">
            </div>
      </td>
  <td colspan="1" valign="top" style="font-weight: bold;" align="justify">
      AutoDoc Perú
      <br>
      <div style="text-align: center; margin-top: 10px;">
         <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" alt="AutoDoc Perú Logo" width="80px">
      </div>
    </td>
  </tr>
  <tr>
  <td colspan="1" rowspan="2" align="center"><p>Perfil</p></td>
  <td colspan="2" align="center">Overview</td>
  <td colspan="1" valign="top" align="justify">Plataforma IoT con dispositivo propio, alertas preventivas y reportes automáticos para talleres y conductores.</td>
  <td colspan="1" valign="top" align="justify">Plataforma regional con recordatorios de mantenimiento y reservas en talleres aliados.</td>
  <td colspan="1" valign="top" align="justify">Dispositivos físicos que se conectan al puerto OBD-II y apps móviles como Torque o Car Scanner para diagnóstico básico.</td>
  <td colspan="1" valign="top" align="justify">App peruana que conecta a conductores con talleres afiliados, ofreciendo reservas y cotización básica.</td>
  </tr>
  <tr>
  <td colspan="2" align="center">Ventaja competitiva</td>
  <td colspan="1" valign="top" align="justify">Diferenciación con dispositivo IoT accesible para cualquier vehículo + reportes predictivos + integración directa conductor–taller.</td>
  <td colspan="1" valign="top" align="justify">Bajo costo y compatibilidad con autos modernos (post 2005).</td>
  <td colspan="1" valign="top" align="justify">Alcance regional, buena experiencia de usuario en la app.</td>
  <td colspan="1" valign="top" align="justify">Red local de talleres, facilidad de reservas rápidas.</td>
  </tr>
  <tr>
  <td colspan="1" rowspan="2" align="center"><p>Perfil de Marketing</p></td>
  <td colspan="2" align="center">Mercado objetivo</td>
  <td colspan="1" valign="top" align="justify">Conductores particulares (incluye taxis y delivery) + talleres mecánicos independientes y medianos.</td>
  <td colspan="1" valign="top" align="justify">Conductores de autos modernos con puerto OBD-II.</td>
  <td colspan="1" valign="top" align="justify">Conductores urbanos y pequeñas flotas en LatAm.</td>
  <td colspan="1" valign="top" align="justify">Conductores en Lima y ciudades principales.</td>
  </tr>
  <tr>
  <td colspan="2" align="center">Estrategias de marketing</td>
  <td colspan="1" valign="top" align="justify">Estrategia mixta: B2C (conductores) + B2B (talleres), alianzas estratégicas y campañas digitales.</td>
  <td colspan="1" valign="top" align="justify">Marketing digital fuerte (B2C) y expansión regional.</td>
  <td colspan="1" valign="top" align="justify">Marketing orgánico (foros, ventas online).</td>
  <td colspan="1" valign="top" align="justify">Convenios con talleres, promociones locales.</td>
  </tr>
  <tr>
  <td colspan="1" rowspan="3" align="center"><p>Perfil de Producto</p></td>
  <td colspan="2" align="center">Productos & Servicios</td>
  <td colspan="1" valign="top" align="justify">Dispositivo IoT + App móvil + Panel web para talleres, historial digital, alertas predictivas.</td>
  <td colspan="1" valign="top" align="justify">App móvil con recordatorios y descuentos en talleres.</td>
  <td colspan="1" valign="top" align="justify">Lectura de fallos, consumo de combustible, RPM.</td>
  <td colspan="1" valign="top" align="justify">Agenda de citas, cotización de servicios básicos.</td>
  </tr>
 <tr>
   <td colspan="2" align="center">Precios & Costos</td>
   <td colspan="1" valign="top" align="justify">
     Suscripción mensual accesible para conductores y talleres.
   </td>
   <td colspan="1" valign="top" align="justify">
	    Freemium con servicios premium.
     </td>
   <td colspan="1" valign="top" align="justify">Dispositivos desde USD 20–50, apps gratuitas o de pago único.</td>
   <td colspan="1" valign="top" align="justify">
	    Freemium con comisiones a talleres.
   </td>
</tr>

  <tr>
    <td colspan="2" align="center">Canales de distribución (Web y/o Móvil)</td>
    <td colspan="1" valign="top" align="justify">Canal de distribución digital web.</td>
    <td colspan="1" valign="top" align="justify">Accesible vía Web y a través de aplicaciones móviles</td>
    <td colspan="1" valign="top" align="justify">Ofrece acceso tanto a través de la Web como en dispositivos móviles</td>
    <td colspan="1" valign="top" align="justify">Disponible en plataformas Web y móvil</td>
  </tr>
</table>

### 2.1.2. Estrategias y tácticas frente a competidores

<table>
<tr>
    <td colspan="1" rowspan="5" align="center"><p>Análisis SWOT</p></td>
    <td colspan="6">Realice esto para su startup y sus competidores. Sus fortalezas deberían apoyar sus oportunidades y contribuir a lo que ustedes definen como su posible ventaja competitiva.</td>
  </tr>
  <tr>
    <td colspan="2">Fortalezas</td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Dispositivo IoT accesible incluso para autos sin OBD-II.</li>
      <li>Alertas predictivas y personalizadas para conductores.</li>
      <li>Reportes automáticos que optimizan el diagnóstico en talleres.</li>
      <li>Integra conductor + taller en un mismo ecosistema.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Dispositivo IoT accesible incluso para autos sin OBD-II.</li>
      <li>Alertas predictivas y personalizadas para conductores.</li>
      <li>Reportes automáticos que optimizan el diagnóstico en talleres.</li>
      <li>Integra conductor + taller en un mismo ecosistema.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Bajo costo de adquisición (USD 20–50).</li>
      <li>Compatibilidad amplia con vehículos modernos (post 2005).</li>
      <li>Fácil acceso en marketplaces globales.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Red local de talleres afiliados que genera confianza inicial.</li>
      <li>Simplicidad en el proceso de reservas y cotizaciones.</li>
      <li>Adaptado a la realidad peruana.</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">Debilidades</td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Nueva marca con poca visibilidad en el mercado.</li>
      <li>Necesidad de educar al usuario sobre los beneficios del mantenimiento preventivo.</li>
      <li>Requiere inversión inicial en dispositivo + suscripción.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Gran dependencia de convenios regionales.</li>
      <li>Falta de personalización para usuarios peruanos.</li>
      <li>Riesgo de dispersión de foco por operar en varios mercados.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Diagnósticos básicos sin valor predictivo.</li>
      <li>No almacena historial del vehículo.</li>
      <li>No integra comunicación con talleres.</li>
      <li>Funcionalidad limitada a lo que la app interpreta.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Cobertura limitada a ciudades grandes como Lima.</li>
      <li>Dependencia de talleres afiliados (no todos los mecánicos forman parte).</li>
      <li>Sin integración tecnológica avanzada (IoT o analítica).</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">Oportunidades</td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Posicionarse como pionero en mantenimiento preventivo inteligente en Perú.</li>
      <li>Alianzas con talleres medianos que carecen de digitalización.</li>
      <li>Crecimiento del mercado de taxis/delivery urbano que demanda menos fallas y más control.</li>
      <li>Potencial de escalabilidad regional en LatAm.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Evolucionar hacia soluciones más completas con apps avanzadas.</li>
      <li>Integrarse con plataformas de movilidad (Uber, Cabify).</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Incorporar funciones de IoT y data analytics.</li>
      <li>Expansión hacia flotas corporativas.</li>
      <li>Posibilidad de alianzas con aseguradoras en LatAm.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Expandir su cobertura a más provincias.</li>
      <li>Ofrecer analítica básica de mantenimiento.</li>
      <li>Integrar talleres con sistemas digitales.</li>
    </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">Amenazas</td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Rápida imitación de funcionalidades por grandes competidores.</li>
      <li>Posible rechazo del mercado si el costo del dispositivo es percibido como elevado.</li>
      <li>Riesgo de que aseguradoras o fabricantes de autos desarrollen soluciones similares.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Nuevos actores con propuestas más completas.</li>
      <li>Rápida saturación del mercado de apps de movilidad.</li>
      <li>Quedar obsoletos frente a plataformas IoT con diagnósticos predictivos.</li>
      <li>Limitaciones en autos más antiguos sin OBD-II.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Nuevos actores con propuestas más completas.</li>
      <li>Rápida saturación del mercado de apps de movilidad.</li>
    </ul>
    </td>
    <td colspan="1" valign="top" align="justify">
    <ul>
      <li>Entrada de competidores internacionales con mayor inversión.</li>
      <li>Desconfianza inicial del usuario frente a nuevas apps.</li>
    </ul>
    </td>
  </tr>
</table>

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

El diseño de entrevistas se estructura en dos bloques principales:

<ol>
  <li><b>Preguntas generales</b> (para ambos segmentos).</li>
  <li><b>Preguntas específicas</b> para cada segmento (conductores y talleres).</li>
</ol>

<p align="justify">
Este diseño sigue buenas prácticas, buscando recopilar datos demográficos (edad, género, ocupación, zona de residencia), información contextual (hábitos, uso de tecnología, preferencias de comunicación), y percepciones clave (objetivos, frustraciones, necesidades, disposición a pagar).
</p>

<b>Preguntas generales (para todos los entrevistados)</b>

<ol>
  <li>¿Cuál es su nombre y edad?</li>
  <li>¿Cuál es su ocupación principal?</li>
  <li>¿En qué distrito o zona de la ciudad vive o trabaja usualmente?</li>
  <li>¿Cuántos años de experiencia tiene como conductor/taller en este sector?</li>
  <li>¿Qué medios digitales suele utilizar con más frecuencia (WhatsApp, apps móviles, redes sociales)?</li>
  <li>¿Está familiarizado con soluciones digitales para el mantenimiento de vehículos?</li>
</ol>

<b>Segmento 1: Conductores particulares (incluye taxis y delivery)</b>

<ol>
  <li>¿Con qué frecuencia lleva su vehículo a mantenimiento preventivo?</li>
  <li>¿Qué problemas ha tenido con el mantenimiento de su vehículo en el último año (averías, altos costos, falta de tiempo)?</li>
  <li>¿Cómo suele enterarse de que su vehículo necesita mantenimiento (luces del tablero, ruidos, taller, experiencia propia)?</li>
  <li>¿Ha utilizado antes algún dispositivo o aplicación para monitorear el estado de su vehículo? ¿Cuál fue su experiencia?</li>
  <li>¿Cuánto gastó aproximadamente en mantenimientos y reparaciones el último año?</li>
  <li>
  ¿Qué valoraría más en una aplicación como SafeCar?
    <ul>
      <li>Alertas preventivas.</li>
      <li>Reporte de historial digital.</li>
      <li>Recomendaciones personalizadas.</li>
      <li>Conexión directa con talleres.</li>
    </ul>
  </li>
  <li>¿Qué tan dispuesto estaría a pagar una suscripción mensual para tener alertas predictivas y acceso a talleres de confianza?</li>
  <li>¿Qué canales digitales prefiere para recibir notificaciones de mantenimiento (app, WhatsApp, email)?</li>
  <li>¿Qué le genera mayor frustración al tratar con talleres actualmente?</li>
  <li>Si pudiera pedir una funcionalidad ideal en una app como SafeCar, ¿cuál sería?</li>
</ol>

<b>Segmento 2: Talleres mecánicos independientes y medianos</b>

<ol>
  <li>¿Cuáles son los principales retos que enfrenta su taller al atender clientes?</li>
  <li>¿Cómo diagnostican actualmente los problemas de los vehículos que reciben?</li>
  <li>¿Cuánto tiempo promedio le toma a un mecánico identificar una falla?</li>
  <li>¿Lleva un registro digital o manual del historial de mantenimientos de los clientes?</li>
  <li>¿Ha utilizado alguna herramienta digital para optimizar procesos del taller? ¿Cuál fue su experiencia?</li>
  <li>
  ¿Qué valoraría más de una plataforma como SafeCar?
    <ul>
      <li>Acceso al historial del vehículo.</li>
      <li>Reportes automáticos.</li>
      <li>Recordatorios de citas para clientes.</li>
      <li>Integración con apps de comunicación.</li>
    </ul>
  </li>
  <li>¿Qué tan dispuesto estaría a pagar una suscripción mensual que le ayude a reducir tiempos de diagnóstico?</li>
  <li>¿Cuál es su principal canal de comunicación con los clientes (teléfono, WhatsApp, app)?</li>
  <li>¿Cuáles son las quejas más comunes que recibe de los clientes en su taller?</li>
  <li>¿Qué tipo de soporte tecnológico considera necesario para modernizar su taller?</li>
</ol>

### 2.2.2. Registro de entrevistas

<b>Segmento: Conductores</b>

<b>Entrevista 1</b>

<ul>
  <li><strong>Nombre:</strong> Katy Gutierrez</li>
  <li><strong>Edad:</strong> 23 años</li>
  <li><strong>Ocupación:</strong> Usa carro particular </li>
  <li><strong>Distrito:</strong> Lince </li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">https://upcedupe-my.sharepoint.com/:v:/g/personal/u201824550_upc_edu_pe/EbWP7AHkagNIuoHROo6NtTgBQoBxwBqgRzKYoCUb9cJ52w?e=oCxlBU</a></li>
  <li><strong>Duración:</strong> [04:19]</li>
  <li><strong>Screenshot:</strong> <img src="Entrevista IoT 1.png" alt="screenshot entrevista 1" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> Katy Gutierrez, quien ultiliza su auto par desplzarse a su centro de trabajo menciona que realiza el mantenimiento de su vehículo cada 8 a 9 meses, aunque a veces lo posterga por motivos de tiempo y costo. En el último año ha tenido dificultades principalmente con los gastos elevados en reparaciones y con la demora en los talleres. Se guía por ruidos del auto o luces en el tablero para identificar fallas y nunca ha utilizado aplicaciones o dispositivos digitales para monitorear su vehículo. Le interesa que SafeCar le brinde alertas preventivas, recomendaciones personalizadas y conexión directa con talleres de confianza. Estaría dispuesto a pagar una suscripción mensual si la ayuda con su problema agrega que prefiere recibir notificaciones a través de WhatsApp y la aplicación. 
</p>

<hr>

<b>Entrevista 2</b>

<ul>
  <li><strong>Nombre:</strong> […]</li>
  <li><strong>Edad:</strong> […]</li>
  <li><strong>Ocupación:</strong> […]</li>
  <li><strong>Distrito:</strong> […]</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> […]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 2" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> [Aquí un párrafo breve (6–8 líneas) con lo más relevante: hábitos de mantenimiento, problemas frecuentes, percepciones de talleres, uso de tecnología y expectativas frente a SafeCar].
</p>

<hr>

<b>Entrevista 3</b>

<ul>
  <li><strong>Nombre:</strong> […]</li>
  <li><strong>Edad:</strong> […]</li>
  <li><strong>Ocupación:</strong> […]</li>
  <li><strong>Distrito:</strong> […]</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> […]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 3" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> [Aquí un párrafo breve (6–8 líneas) con lo más relevante: hábitos de mantenimiento, problemas frecuentes, percepciones de talleres, uso de tecnología y expectativas frente a SafeCar].
</p>

<hr>

<b>Segmento: Talleres mecánicos</b>

<b>Entrevista 1</b>

<ul>
  <li><strong>Nombre del taller:</strong> [Nombre comercial]</li>
  <li><strong>Representante:</strong> [Nombre Apellido / Cargo]</li>
  <li><strong>Años de operación:</strong> [años]</li>
  <li><strong>Distrito:</strong> [Distrito/Ciudad]</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> [mm:ss]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 1" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> [Párrafo breve con hallazgos clave del taller: tiempos de diagnóstico, problemas frecuentes, interés en digitalización, disposición a pagar].
</p>

<hr>

<b>Entrevista 2</b>

<ul>
  <li><strong>Nombre del taller:</strong> [Nombre comercial]</li>
  <li><strong>Representante:</strong> [Nombre Apellido / Cargo]</li>
  <li><strong>Años de operación:</strong> [años]</li>
  <li><strong>Distrito:</strong> [Distrito/Ciudad]</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> [mm:ss]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 2" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> [Párrafo breve con hallazgos clave del taller: tiempos de diagnóstico, problemas frecuentes, interés en digitalización, disposición a pagar].
</p>

<hr>

<b>Entrevista 3</b>

<ul>
  <li><strong>Nombre del taller:</strong> [Nombre comercial]</li>
  <li><strong>Representante:</strong> [Nombre Apellido / Cargo]</li>
  <li><strong>Años de operación:</strong> [años]</li>
  <li><strong>Distrito:</strong> [Distrito/Ciudad]</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> [mm:ss]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 3" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> [Párrafo breve con hallazgos clave del taller: tiempos de diagnóstico, problemas frecuentes, interés en digitalización, disposición a pagar].
</p>

### 2.2.3. Análisis de entrevistas

| Nombre             | Preferencias y Recomendaciones                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Katy Gutierrez** | Prefiere recibir notificaciones por WhatsApp y app móvil. Valora mucho las alertas preventivas, recomendaciones personalizadas y conexión con talleres de confianza. Está dispuesto a pagar una suscripción mensual accesible (20–30 soles). Recomienda que la app anticipe fallas y brinde estimación de costos. Se queja principalmente de los altos precios y la demora en los talleres, además de la desconfianza por cobros excesivos. |

## 2.3. Needfinding

### 2.3.1. User Personas

<p align="justify">
Las User Personas permiten representar arquetipos basados en los segmentos objetivo de <strong>SafeCar</strong>. Han sido elaboradas a partir del análisis de entrevistas y del estudio de competidores, reflejando las características, necesidades, motivaciones y frustraciones más relevantes de los usuarios. Estas fichas son esenciales para guiar el diseño de las funcionalidades de la plataforma, asegurando que las soluciones estén alineadas con las expectativas tanto de los conductores como de los talleres mecánicos.
</p>

<b>Segmento: Conductores</b>

<p align="justify"> Este segmento representa a los conductores de vehículos particulares que pueden usar su auto tanto para fines personales como laborales. Incluye a quienes trabajan en taxi (por aplicativo o tradicional), en servicios de delivery o simplemente utilizan su automóvil como medio de transporte propio y familiar. En todos los casos, el vehículo es un recurso vital cuya disponibilidad impacta en su economía o bienestar. Sus principales preocupaciones giran en torno a la reducción de gastos inesperados, la seguridad en carretera y la facilidad de acceder a talleres confiables. Valoran especialmente soluciones digitales simples que les ayuden a anticipar fallas, recibir recordatorios de mantenimiento y prolongar la vida útil de su vehículo. </p>

<img src="/assets/img/capitulo-II/user-persona-driver.png" alt="User Persona - Conductor" width="700"/>

<br/><b>Segmento: Talleres mecánicos</b>

<p align="justify"> Este segmento corresponde a propietarios y trabajadores de talleres mecánicos independientes o de tamaño mediano. Son profesionales con experiencia práctica en diagnóstico y reparación de vehículos, pero que en muchos casos carecen de soluciones digitales para agilizar sus procesos. Su principal desafío es optimizar el tiempo de diagnóstico, fidelizar a los clientes y adaptarse a nuevas tecnologías que les permitan mejorar la eficiencia de su negocio. </p>

<img src="/assets/img/capitulo-II/user-persona-mechanic.png" alt="User Persona - Mecánico" width="700"/>

### 2.3.2. User Task Matrix

<p align="justify"> En esta sección se presenta la <strong>User Task Matrix</strong>, que concentra las tareas que los <em>User Personas</em> realizan para cumplir sus objetivos. Para el caso de <strong>SafeCar</strong>, se consideran los dos segmentos principales: <strong>conductores particulares</strong> (incluyendo uso personal, taxi y delivery) y <strong>talleres mecánicos independientes o medianos</strong>. Las tareas aquí descritas se realizan independientemente de la existencia de una solución tecnológica, ya que corresponden a actividades que ambos segmentos deben ejecutar en su día a día. </p>

<table style="width:100%; border-collapse:collapse; font-family:Arial, sans-serif;">
    <thead>
      <tr>
        <th rowspan="2" style="border:1px solid #ddd; padding:8px; text-align:left;">Task</th>
        <th colspan="2" style="border:1px solid #ddd; padding:8px;">Conductor Particular (Taxi/Delivery/Personal)</th>
        <th colspan="2" style="border:1px solid #ddd; padding:8px;">Taller Mecánico Independiente/Mediano</th>
      </tr>
      <tr>
        <th style="border:1px solid #ddd; padding:8px;">Frequency</th>
        <th style="border:1px solid #ddd; padding:8px;">Importance</th>
        <th style="border:1px solid #ddd; padding:8px;">Frequency</th>
        <th style="border:1px solid #ddd; padding:8px;">Importance</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Revisar estado general del vehículo (luces, llantas, niveles)</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Llevar el vehículo a mantenimiento preventivo</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Atender reparaciones correctivas (fallas inesperadas)</td>
        <td style="border:1px solid #ddd; padding:8px;">Low</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Coordinar citas o comunicación con talleres</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Registrar gastos de mantenimiento y reparaciones</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Conducir de manera eficiente para reducir desgaste</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Diagnosticar fallas de vehículos recibidos</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Supervisar tiempos de reparación y entrega</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Gestionar relación con clientes (conductores)</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">—</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
      <tr>
        <td style="border:1px solid #ddd; padding:8px;">Mantener historial de vehículos atendidos</td>
        <td style="border:1px solid #ddd; padding:8px;">Low</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">Medium</td>
        <td style="border:1px solid #ddd; padding:8px;">High</td>
      </tr>
    </tbody>
</table>

<strong>Explicación</strong>

<p align="justify">
    Para los <strong>conductores particulares</strong>, las tareas con mayor frecuencia e importancia son
    <em>revisar el estado general del vehículo</em> y <em>realizar mantenimiento preventivo</em>, ya que impactan directamente en su
    continuidad operativa y en la reducción de costos imprevistos. Las <em>reparaciones correctivas</em> ocurren con menor
    frecuencia, pero son de alta importancia por su costo e impacto.
  </p>
<p align="justify">
  En los <strong>talleres mecánicos</strong>, las tareas críticas son <em>diagnosticar fallas</em>, <em>supervisar tiempos de reparación</em> y
  <em>gestionar la relación con clientes</em>, todas de alta frecuencia e importancia por su efecto en eficiencia y satisfacción.
  El <em>historial de vehículos</em> no siempre se lleva con alta frecuencia, pero tiene alta importancia para mejorar calidad y confianza.
</p>
<p align="justify">
  Como coincidencias, ambos segmentos asignan alta importancia a la <em>coordinación y comunicación</em> para agendar servicios y
  al <em>registro</em> (de gastos o mantenimientos), aunque con enfoques distintos: control de costos personales en conductores y
  optimización operativa en talleres.
</p>

### 2.3.3. User Journey Mapping
<p align="justify"> Los <em>User Journey Maps</em> ilustran el recorrido completo de los usuarios objetivo de <strong>SafeCar</strong> en la situación actual (<em>As-Is</em>), es decir, sin contar aún con la implementación de la solución propuesta. Este mapeo recoge las principales <strong>acciones, metas, emociones y problemas</strong> que experimentan los conductores particulares (incluyendo uso personal, taxi y delivery) y los talleres mecánicos independientes/medianos, desde el primer contacto con la necesidad de un servicio de mantenimiento hasta la resolución del problema o abandono del servicio. </p>

<strong>User Journey Map - Conductor particular(personal, taxi y delivery)</strong>
<p align="justify"> El journey del conductor comienza cuando detecta señales de problemas en su vehículo (luces en el tablero, ruidos extraños o fallas inesperadas). A partir de allí, pasa por etapas como la búsqueda de un taller, la coordinación de una cita, el tiempo de espera por diagnóstico y reparación, y finalmente la entrega del vehículo. Durante este proceso, las emociones del conductor oscilan entre la <em>ansiedad</em> por los costos imprevistos, la <em>frustración</em> por los tiempos de espera y la <em>incertidumbre</em> respecto a la confiabilidad del taller, con pocos momentos de satisfacción. Este recorrido muestra claras oportunidades de mejora en la anticipación de fallas, en la transparencia de los costos y en la confiabilidad del servicio. </p>

<img src="/assets/img/capitulo-II/journey-map-driver.png" alt="User Journey Map - Conductor" width="700"/>


<br/><strong>User Journey Map - Taller mecánico independiente/mediano</strong>
<p align="justify"> En el caso de los talleres mecánicos, el journey se inicia cuando reciben un vehículo sin información previa o historial digital del mismo. Esto genera un proceso más largo y dependiente de inspecciones manuales, pruebas de manejo o escaneo básico. El mecánico debe diagnosticar la falla, comunicarla al cliente, esperar su aprobación y recién proceder a la reparación. Las emociones predominantes en el taller van desde la <em>presión</em> por entregar el vehículo en el menor tiempo posible, hasta la <em>frustración</em> por la falta de datos y la desconfianza de algunos clientes frente a los diagnósticos. Las oportunidades detectadas incluyen la posibilidad de acceder a reportes digitales de fallas, contar con historiales de mantenimiento previos y reducir los tiempos de diagnóstico. </p>

<img src="/assets/img/capitulo-II/journey-map-mechanic.png" alt="User Journey Map - Mecánico" width="700"/>

### 2.3.4. Empathy Mapping

## 2.4. Big Picture EventStorming

## 2.5. Ubiquitous Language
