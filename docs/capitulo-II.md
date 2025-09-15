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
  <div style="margin-top: 20px;" align="center">
                <img src="/assets/img/capitulo-II/Entrevista1IOT.png" alt="Entrevista1IOT" width="1000px">
        </div>

</ul>
<p align="justify">
<strong>Resumen:</strong> Katy Gutierrez, quien ultiliza su auto par desplzarse a su centro de trabajo menciona que realiza el mantenimiento de su vehículo cada 8 a 9 meses, aunque a veces lo posterga por motivos de tiempo y costo. En el último año ha tenido dificultades principalmente con los gastos elevados en reparaciones y con la demora en los talleres. Se guía por ruidos del auto o luces en el tablero para identificar fallas y nunca ha utilizado aplicaciones o dispositivos digitales para monitorear su vehículo. Le interesa que SafeCar le brinde alertas preventivas, recomendaciones personalizadas y conexión directa con talleres de confianza. Estaría dispuesto a pagar una suscripción mensual si la ayuda con su problema agrega que prefiere recibir notificaciones a través de WhatsApp y la aplicación.
</p>

<hr>

<b>Entrevista 2</b>

<ul>
  <li><strong>Nombre:</strong> Orlando</li>
  <li><strong>Edad:</strong> 23</l>
  <li><strong>Ocupación:</strong> Desarrollador de software/Conductor</li>
  <li><strong>Distrito:</strong> La molina</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">[Link]</a></li>
  <li><strong>Duración:</strong> 4:22 min</li>
  <li><strong>Screenshot:</strong> <img src="https://media.discordapp.net/attachments/834550053590925412/1414777325970784316/image.png?ex=68c0cd8f&is=68bf7c0f&hm=431e0db6cc946fd4692194968b04f8ccaaa2cdcbfc821155639e772f02356b7f&=&format=webp&quality=lossless" alt="screenshot entrevista 2" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> Orlando Roca, 23 años, desarrollador de software y estudiante, con 5 años de experiencia conduciendo en Lima, comentó que realiza mantenimiento preventivo unas 3 veces al año y que sus principales problemas son pinchazos de llantas y desgaste por baches, además de frenos defectuosos. Detecta las fallas solo por señales físicas (llanta baja, ruidos), nunca ha usado soluciones digitales y gasta alrededor de 500 soles al año en reparaciones. Valora especialmente recibir alertas tempranas y un historial de precios de talleres para evitar sobrecostos, ya que su principal frustración es la desconfianza en los cobros. Prefiere WhatsApp como canal de notificación y afirmó estar dispuesto a pagar una suscripción mensual si la aplicación le ayuda a ahorrar en mantenimiento y a tener mayor transparencia.
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
  <li><strong>Nombre del taller:</strong> Mecangroup</li>
  <li><strong>Representante:</strong> Abel Holguín / Supervisor</li>
  <li><strong>Años de operación:</strong> 27 años</li>
  <li><strong>Distrito:</strong> La Victoria</li>
  <li><strong>URL del video:</strong> <a href="[URL]" target="_blank">https://upcedupe-my.sharepoint.com/:v:/g/personal/u201824550_upc_edu_pe/EbWP7AHkagNIuoHROo6NtTgBQoBxwBqgRzKYoCUb9cJ52w?e=oCxlBU</a></li>
  <li><strong>Duración:</strong> [03:09]</li>
  <li><strong>Screenshot:</strong> <img src="[URL-screenshot]" alt="screenshot entrevista 1" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> Abel Holguín, compartió los desafíos que enfrenta en la gestión de su taller mecánico. Destacó que el principal reto es la creciente complejidad electrónica de los vehículos modernos, lo que exige que su personal reciba capacitación constante en electrónica avanzada y software. Actualmente, para el diagnóstico de fallas, utiliza principalmente escáneres y computadoras, y mantiene un registro digital del historial de mantenimiento de los vehículos de sus clientes. Aunque ya emplea estas herramientas, expresó que una queja común de los clientes son las demoras en el diagnóstico, ya que a veces surgen problemas inesperados. El señor Abel mostró interés en adoptar nuevas soluciones digitales, mencionando que estaría dispuesto a pagar una suscripción mensual por una plataforma que ofrezca "reportes automáticos" y ayude a reducir los tiempos de diagnóstico.
</p>

<hr>

<b>Entrevista 2</b>

<ul>
  <li><strong>Nombre del taller:</strong> Eurocars</li>
  <li><strong>Representante:</strong> Germán Figeroa</li>
  <li><strong>Años de operación:</strong> 15 años</li>
  <li><strong>Distrito:</strong> Los Olivos</li>
  <li><strong>URL del video:</strong> <a href="https://drive.google.com/file/d/1kyoAtXU90Ml7bK_7WturPDykz0BeB_qe/view?usp=sharing" target="_blank">[https://drive.google.com/file/d/1kyoAtXU90Ml7bK_7WturPDykz0BeB_qe/view?usp=sharing]</a></li>
  <li><strong>Duración:</strong> [08:20]</li>
  <li><strong>Screenshot:</strong> <img src="./../assets/img/capitulo-II/entrevista-2.png" alt="screenshot entrevista 2" style="max-width:200px;"></li>
</ul>
<p align="justify">
<strong>Resumen:</strong> Germán Figueroa, dueño de un taller mediano en Los Olivos, vive con el “día a día” del oficio: fallas intermitentes que quitan tiempo, clientes que no llegan a la cita y la eterna búsqueda del historial del auto. Se apoya sobre todo en WhatsApp Business, algo de Facebook/Instagram y planillas en Google Sheets, pero siente que todo está disperso. Lo que más valora de una solución como SafeCar es tener el historial por placa/VIN con fotos, repuestos y diagnósticos en un solo lugar, reportes que le avisen qué autos están por mantener y recordatorios por WhatsApp para reducir ausencias. Si realmente le ahorra 1–2 horas diarias, pagaría S/200–S/300 al mes; mejor aún si integra WhatsApp, facturación y catálogo de repuestos, y trae soporte inicial para su equipo. Sueña con alertas claras (“crítica”, “atención”, “preventiva”) que muestren evidencia simple —“batería baja”, “temperatura anormal” para confirmar la cita rápidamente y recibir el auto ya con el camino marcado: menos adivinanzas, más confianza y eficiencia.
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

## 2.3. Needfinding

### 2.3.1. User Personas

<p align="justify">
Las User Personas permiten representar arquetipos basados en los segmentos objetivo de <strong>SafeCar</strong>. Han sido elaboradas a partir del análisis de entrevistas y del estudio de competidores, reflejando las características, necesidades, motivaciones y frustraciones más relevantes de los usuarios. Estas fichas son esenciales para guiar el diseño de las funcionalidades de la plataforma, asegurando que las soluciones estén alineadas con las expectativas tanto de los conductores como de los talleres mecánicos.
</p>

<b>Segmento: Conductores</b>

<p align="justify"> Este segmento representa a los conductores de vehículos particulares que pueden usar su auto tanto para fines personales como laborales. Incluye a quienes trabajan en taxi (por aplicativo o tradicional), en servicios de delivery o simplemente utilizan su automóvil como medio de transporte propio y familiar. En todos los casos, el vehículo es un recurso vital cuya disponibilidad impacta en su economía o bienestar. Sus principales preocupaciones giran en torno a la reducción de gastos inesperados, la seguridad en carretera y la facilidad de acceder a talleres confiables. Valoran especialmente soluciones digitales simples que les ayuden a anticipar fallas, recibir recordatorios de mantenimiento y prolongar la vida útil de su vehículo. </p>

<img src="/assets/img/capitulo-II/user-persona-driver.png" alt="User Persona - Conductor" width="700"/>

<img src="/assets/img/capitulo-II/UserPersona_entrevista1.jpeg" alt="UserPersona_entrevista1" width="700"/>

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
<p align="justify"> En el caso de los talleres mecánicos, el journey se inicia cuando reciben un vehículo sin información previa o historial digital del mismo. Esto genera un proceso más largo y dependiente de inspecciones manuales, pruebas de manejo o escaneo básico. El mecánico debe diagnosticar la falla, comunicarla al cliente, esperar su aprobación y recién proceder a la reparación. Las emociones predominantes en el taller van desde la <em>presión</em> por entregar el vehículo en el menor tiempo posible, hasta la <em>frustración</em> por la falta de datos y la desconfianza de algunos clientes frente a los diagnósticos. Las oportunidades detectadas in◊cluyen la posibilidad de acceder a reportes digitales de fallas, contar con historiales de mantenimiento previos y reducir los tiempos de diagnóstico. </p>

<img src="/assets/img/capitulo-II/journey-map-mechanic.png" alt="User Journey Map - Mecánico" width="700"/>

### 2.3.4. Empathy Mapping
<p align="justify"> Los <em>Empathy Maps</em> permiten profundizar en la comprensión de los <strong>User Personas</strong> definidos para SafeCar, capturando no solo sus acciones y necesidades, sino también sus percepciones, emociones, frustraciones y expectativas. En esta sección se presentan los mapas elaborados en la herramienta indicada, vinculados a cada uno de los segmentos objetivo (Conductores Particulares y Talleres Mecánicos). </p>

<strong>Empathy Mapping - Conductor particular(personal, taxi y delivery)</strong>
<p align="justify"> Este mapa refleja el día a día de los conductores que utilizan su vehículo como recurso principal, ya sea para uso personal, trabajo en taxi o delivery. Sus emociones y decisiones giran en torno a la necesidad de mantener el automóvil siempre operativo, ya que cualquier avería implica costos elevados y pérdida de ingresos. A través del empathy map se evidencian sus motivaciones, frustraciones y lo que dicen, ven, piensan y escuchan en relación al mantenimiento de sus vehículos. </p>
<img src="/assets/img/capitulo-II/empathy-map-driver.png" alt="Empathy Map - Conductor" width="700"/>

<br/><strong>Empathy Mapping - Taller mecánico independiente/mediano</strong>
<p align="justify"> Este mapa refleja el día a día de los conductores que utilizan su vehículo como recurso principal, ya sea para uso personal, trabajo en taxi o delivery. Sus emociones y decisiones giran en torno a la necesidad de mantener el automóvil siempre operativo, ya que cualquier avería implica costos elevados y pérdida de ingresos. A través del empathy map se evidencian sus motivaciones, frustraciones y lo que dicen, ven, piensan y escuchan en relación al mantenimiento de sus vehículos. </p>
<img src="/assets/img/capitulo-II/empathy-map-mechanic.png" alt="Empathy Map - Mecánico" width="700"/>

## 2.4. Big Picture EventStorming

<p align="justify">
El <strong>Big Picture EventStorming</strong> es una técnica de modelado colaborativo que permite visualizar los procesos de negocio a través de la identificación cronológica de eventos del dominio. En el contexto de <strong>SafeCar</strong>, esta metodología resulta fundamental para mapear el ecosistema completo de mantenimiento vehicular, desde la detección de problemas hasta la resolución en talleres.
</p>

Enlace de acceso a Miro (EventStorming): <a href="https://miro.com/app/board/uXjVJItKYhM=/?share_link_id=862788472423" target="_blank">https://miro.com/app/board/uXjVJItKYhM=/?share_link_id=862788472423</a>


#### Step 1: Unstructured Exploration

<p align="justify">
Este paso consiste en identificar todos los eventos del dominio de manera libre y sin orden específico. Los participantes generan eventos en formato pasado ("algo pasó") para capturar toda la actividad relevante del ecosistema SafeCar.
</p>

<img src="/assets/img/capitulo-II/unstructured-exploration.png" alt="Step 1:Unstructured Exploration" width="700"/>

#### Step 2: Timelines

<p align="justify">
Se organizan los eventos identificados en orden cronológico para crear flujos de trabajo coherentes. Este paso establece la secuencia temporal de los procesos de mantenimiento vehicular.
</p>

<img src="/assets/img/capitulo-II/timelines-event-storming.png" alt="Step 2:Timelines" width="700"/>

#### Step 3: Paint Points

<p align="justify">
Se identifican los puntos problemáticos o fricciones en el proceso actual. Estos representan oportunidades de mejora que SafeCar puede abordar con su solución tecnológica.
</p>

<img src="/assets/img/capitulo-II/paint-points-event-storming.png" alt="Step 3:Paint Points" width="700"/>

#### Step 4: Pivotal Points

<p align="justify">
Se marcan los eventos críticos que determinan el éxito o fracaso del proceso. Son los momentos clave donde las decisiones tienen mayor impacto en el resultado.
</p>

<img src="/assets/img/capitulo-II/pivotal-points-event-storming.png" alt="Step 4:Pivotal Points" width="700"/>

#### Step 5: Commands

<p align="justify">
Se definen las acciones o comandos que desencadenan los eventos del sistema. Representan las intenciones de usuarios y sistemas que inician procesos específicos.
</p>

<img src="/assets/img/capitulo-II/commands-event-storming.png" alt="Step 5:Commands" width="700"/>

#### Step 6: Policies

<p align="justify">
Se establecen las reglas de negocio que determinan cuándo y cómo se ejecutan procesos automáticos. Son las políticas que gobiernan el comportamiento del sistema.
</p>

<img src="/assets/img/capitulo-II/policies-event-storming.png" alt="Step 6:Policies" width="700"/>

#### Step 7: Read Models

<p align="justify">
Se identifican las vistas de información que los usuarios necesitan para tomar decisiones. Son las representaciones de datos que consume la interfaz de usuario.
</p>

#### Step 8: External Systems

<p align="justify">
Se mapean los sistemas externos con los que SafeCar debe integrarse. Incluye APIs, servicios de terceros y sistemas existentes necesarios para el funcionamiento completo.
</p>

<img src="/assets/img/capitulo-II/external-systems-event-storming.png" alt="Step 8:External Systems" width="700"/>

#### Step 9: Aggregates

<p align="justify">
Se definen las entidades de dominio que encapsulan comportamientos y datos relacionados. Son los objetos principales del negocio que mantienen consistencia interna.
</p>

<img src="/assets/img/capitulo-II/aggregates-event-storming.png" alt="Step 9:Aggregates" width="700"/>

#### Step 10: Bounded Contexts

<p align="justify">
Se establecen los contextos delimitados que agrupan funcionalidades relacionadas. Define las fronteras claras entre diferentes áreas de responsabilidad del sistema.
</p>

<img src="/assets/img/capitulo-II/bounded-contexts-event-storming.png" alt="Step 10:Bounded Contexts" width="700"/>

## 2.5. Ubiquitous Language

<p align="justify">
El <strong>Ubiquitous Language</strong> (Lenguaje Ubicuo) es un conjunto de términos y conceptos compartidos entre todos los miembros del equipo de desarrollo y los expertos del dominio. Este lenguaje común elimina ambigüedades y asegura que todos los participantes del proyecto SafeCar tengan la misma comprensión de los conceptos clave del negocio. A continuación se presenta el glosario de términos fundamentales para el dominio de mantenimiento vehicular IoT.
</p>

### Ubiquitous Language — SafeCar

#### 1. Vehículo y componentes
• **Vehicle (Vehículo)**: Unidad automotriz identificada por placa y características (marca, modelo, año) sobre la que se realizan diagnósticos, mantenimientos y reparaciones.  
• **Odometer (Odómetro)**: Indicador acumulado de kilómetros recorridos por el vehículo.  
• **Powertrain (Tren motriz)**: Conjunto de elementos que transmiten potencia (motor, transmisión y ejes).  
• **Engine (Motor)**: Conjunto mecánico que genera potencia para el movimiento del vehículo.  
• **Battery (Batería)**: Fuente de energía eléctrica para arranque y sistemas auxiliares.  
• **Cooling System (Sistema de enfriamiento)**: Circuito (radiador, bomba, termostato) que mantiene la temperatura operativa del motor.  
• **Brake System (Sistema de frenos)**: Conjunto (discos, pastillas, líquido) que permite desaceleración y detención segura.  
• **Tire (Neumático/Llanta)**: Elemento de contacto con la calzada; su presión y desgaste impactan seguridad y consumo.  
• **Suspension (Suspensión)**: Conjunto que absorbe irregularidades del camino y mantiene estabilidad.  
• **Steering (Dirección)**: Sistema que permite orientar las ruedas y controlar la trayectoria.  
• **Exhaust System (Sistema de escape)**: Conduce y trata gases producto de la combustión.  
• **Fuel System (Sistema de combustible)**: Almacena y suministra combustible al motor.  
• **OBD-II**: On-Board Diagnostics II para lectura de parámetros y códigos de falla (DTC: Diagnostic Trouble Codes).  
• **Telematics Device (Dispositivo telemático/IoT)**: Equipo instalado en el vehículo que captura datos operativos y de uso.

#### 2. Uso y condiciones de operación
• **Trip (Viaje/Trayecto)**: Desplazamiento continuo del vehículo entre dos momentos de encendido y apagado.  
• **Driving Habit (Hábito de conducción)**: Patrón de manejo observado (aceleraciones fuertes, frenadas bruscas, giros violentos).  
• **Harsh Braking (Frenada brusca)**: Evento de desaceleración súbita que supera un umbral definido.  
• **Harsh Acceleration (Aceleración fuerte)**: Evento de incremento rápido de velocidad que supera un umbral.  
• **Harsh Cornering (Giro brusco)**: Cambio violento de dirección que excede un umbral de aceleración lateral.

#### 3. Diagnóstico y códigos
• **Diagnostic Trouble Code – DTC (Código de falla)**: Código estándar que indica una anomalía detectada por el vehículo.  
• **Active DTC (DTC activo)**: Falla presente actualmente.  
• **Stored DTC (DTC almacenado)**: Falla registrada históricamente, no presente al momento.  
• **Health Check (Chequeo de salud)**: Evaluación general del estado del vehículo basada en lecturas y umbrales.  
• **Inspection (Inspección)**: Revisión visual o instrumental de componentes según una pauta definida.  
• **Technical Report (Reporte técnico)**: Documento que resume hallazgos, diagnósticos y acciones recomendadas.

#### 4. Mantenimiento y servicios
• **Preventive Maintenance (Mantenimiento preventivo)**: Intervenciones programadas para evitar fallas (por tiempo o kilometraje).  
• **Corrective Maintenance (Mantenimiento correctivo)**: Reparación una vez ocurrida una falla.  
• **Service Interval (Intervalo de servicio)**: Frecuencia recomendada para realizar un mantenimiento (p.ej., cada 10 000 km o 6 meses).  
• **Oil Change (Cambio de aceite)**: Sustitución de aceite y, normalmente, del filtro correspondiente.  
• **Filter Replacement (Cambio de filtro)**: Sustitución de filtros (aceite, aire, combustible, cabina).  
• **Brake Service (Servicio de frenos)**: Revisión/sustitución de pastillas, discos, líquido y purgado.  
• **Tire Rotation (Rotación de neumáticos)**: Cambio de posición de neumáticos para distribuir desgaste.  
• **Tire Replacement (Cambio de neumáticos)**: Sustitución cuando hay desgaste, daño o antigüedad.  
• **Wheel Alignment (Alineación)**: Ajuste de ángulos de dirección para estabilidad y desgaste homogéneo.  
• **Wheel Balancing (Balanceo)**: Corrección de desbalances para evitar vibraciones.  
• **Coolant Flush (Cambio de refrigerante)**: Renovación del fluido del sistema de enfriamiento.  
• **Battery Test (Prueba de batería)**: Verificación de capacidad de arranque y estado de carga.

#### 5. Alertas y recomendaciones
• **Condition (Condición)**: Situación detectada que requiere evaluación (p.ej., presión baja).  
• **Alert (Alerta)**: Aviso al conductor o taller por condición de riesgo o atención requerida.  
• **Severity (Severidad)**: Nivel de criticidad de una alerta (leve, moderada, crítica).  
• **Priority (Prioridad)**: Orden de atención sugerido según severidad y contexto.  
• **Recommendation (Recomendación)**: Sugerencia de mantenimiento o acción preventiva.  
• **Reminder (Recordatorio)**: Aviso programado para un servicio futuro por fecha o kilometraje.  
• **Risk Score (Puntaje de riesgo)**: Valor que sintetiza el nivel de riesgo operativo derivado de hábitos y estado del vehículo.  
• **Driving Profile (Perfil de conducción)**: Clasificación del estilo de manejo (seguro, económico, riesgoso) según hábitos.

#### 6. Relación con el taller
• **Workshop (Taller)**: Centro autorizado que presta servicios de mantenimiento y reparación.  
• **Mechanic (Mecánico)**: Profesional que realiza diagnósticos, mantenimientos y reparaciones.  
• **Service Advisor (Asesor de servicio)**: Persona que recibe al cliente, acuerda trabajos y comunica avances.  
• **Appointment (Cita)**: Reserva de fecha y hora para atención del vehículo en el taller.  
• **Check-in (Recepción)**: Registro de llegada del vehículo para iniciar el proceso en taller.  
• **Work Order – WO (Orden de trabajo)**: Documento operativo que detalla los trabajos autorizados, insumos y tiempos.  
• **Estimate (Presupuesto)**: Propuesta económica previa a la ejecución, con ítems y costos.  
• **Customer Approval (Aprobación del cliente)**: Autorización expresa para ejecutar el trabajo y costos asociados.  
• **Parts (Repuestos)**: Componentes o consumibles necesarios para la intervención.  
• **Service Status (Estado del servicio)**: Etapas del proceso en taller (en recepción, en diagnóstico, en reparación, finalizado).  
• **Delivery (Entrega)**: Devolución del vehículo al cliente tras finalizar el servicio.

#### 7. Garantía, calidad y cumplimiento
• **Quality Check (Control de calidad)**: Verificación final de trabajos antes de la entrega.  
• **Service History (Historial de mantenimiento)**: Registro cronológico de servicios realizados a un vehículo.  
• **Inspection Report (Informe de inspección)**: Resultado documentado de una inspección oficial o interna.

#### 8. Planes y relación comercial
• **Membership Plan (Plan de membresía)**: Paquete de beneficios y condiciones que habilita el uso de servicios SafeCar.  
• **Coverage (Cobertura)**: Alcance de servicios y límites incluidos en el plan o garantía.  
• **Service Package (Paquete de servicio)**: Conjunto de servicios preventivos ofrecidos a precio preferente.  
• **Customer (Cliente/Conductor)**: Persona titular del vehículo que solicita y paga servicios.  
• **Consent (Consentimiento)**: Autorización del cliente para compartir datos de su vehículo con un taller.  
• **Service Policy (Política de servicio)**: Reglas del taller sobre citas, cancelaciones, tiempos y garantías.

#### 9. Medición y métricas de operación
• **Mileage/Kilometrage (Kilometraje)**: Distancia total recorrida por el vehículo en odómetro.  
• **Operating Hours (Horas de operación)**: Tiempo acumulado de motor encendido.  
• **Fuel Economy (Consumo de combustible)**: Rendimiento de combustible por distancia (p.ej., km/L).  
• **Wear Indicator (Indicador de desgaste)**: Señal que sugiere proximidad a recambio de pieza o servicio.  
• **Service Due (Servicio pendiente)**: Mantenimiento que corresponde por fecha o kilometraje alcanzado.  
• **Overheat (Sobrecalentamiento)**: Condición de temperatura del motor por encima de límites seguros.  
• **Low Pressure (Presión baja)**: Presión de neumáticos por debajo del umbral recomendado.

