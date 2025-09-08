# Capítulo III: Requirements Specification

## 3.1. User Stories.

<!-- INICIO: Tabla de User Stories (Epic/Story) -->
<!-- Descripción: Tabla para registrar historias de usuario con Epic/Story ID, título, descripción, criterios de aceptación y relación con Epic. -->
<table border="1" width="100%" style="border-collapse: collapse;">
	<thead>
		<tr>
			<th><!-- Columna 01 --> Epic / Story ID</th>
			<th><!-- Columna 02 --> Título</th>
			<th><!-- Columna 03 --> Descripción</th>
		</tr>
	</thead>
	<tbody>
	<tr>
		<td>E1</td>
		<td>Epic 1: Landing page</td>
		<td>Como visitante quiero visualizar una página...</td>
	</tr>
	<tr>
		<td>E2</td>
		<td>Epic 2: Registro de usuarios</td>
		<td>Implementar el registro de usuarios (conductores y talleres) en la plataforma SafeCar, accesible desde la landing page, con formularios diferenciados según el tipo de usuario.</td>
	</tr>

  	<tr>
		<td>E3</td>
		<td>Epic 3: Aplicación móvil SafeCar</td>
		<td>Implementar la aplicación móvil de SafeCar para conductores y talleres, permitiendo acceder a diagnósticos IoT, gestionar mantenimientos y recibir alertas preventivas en tiempo real.	</td>
	</tr>

 	<tr>
		<td>E4</td>
		<td>Epic 4:  </td>
		<td> .	</td>
	</tr>
</tbody>
</table>

<!-- FIN: Tabla de User Stories (Epic/Story) -->


<!-- INICIO: Tabla de User Stories (Epic/Story) -->
<!-- Descripción: Tabla para registrar historias de usuario con Epic/Story ID, título, descripción, criterios de aceptación y relación con Epic. -->
<table border="1" width="100%" style="border-collapse: collapse;">
	<thead>
		<tr>
			<th><!-- Columna 01 --> Epic / Story ID</th>
			<th><!-- Columna 02 --> Título</th>
			<th><!-- Columna 03 --> Descripción</th>
			<th><!-- Columna 04 --> Criterios de Aceptación</th>
			<th><!-- Columna 05 --> Relacionado con (Epic ID)</th>
		</tr>
	</thead>
	<tbody>
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td>US101 </td>
			<td>Barra de navegación en landing page </td>
			<td>Como visitante quiero una barra de navegación de landing page para tener accesos directos a la información de la aplicación  </td>
			<td>

Escenario 1: Acceso a la sección inicio del producto

Dado que el visitante está en el landing page
			Y utiliza la barra de navegación

Cuando selecciona “Inicio”

Entonces accede a la sección hero del producto.

Escenario 2: Acceso a la sección de características del producto

Dado que el visitante está en el landing page

Y utiliza la barra de navegación

Cuandoselecciona “Características”

Entonces accede a la sección que muestra las características del producto.


Escenario 3: Acceso a la sección de planes del producto

Dado que el visitante está en el landing page

Y utiliza la barra de navegación

Cuandoselecciona “Planes”

Entonces accede a la sección de planes del producto.

Escenario 4: Acceso a la sección de testimonios

Dado que el visitante está en el landing page
Y utiliza la barra de navegación

Cuando selecciona "Testimonios"

Entonces accede a la sección que muestra los testimonios de los usuarios.

Escenario 5: Acceso a la sección de contacto

Dado que el visitante está en el landing page
Y utiliza la barra de navegación

Cuando selecciona "Contacto"

Entonces accede a la sección de contacto del producto.<!-- Criterios de Aceptación: use viñetas o separe con ; --> </td>
<td>E1 </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	<!-- Nota: Mantenga IDs consistentes con su backlog/jira y el repositorio de seguimiento. -->
	<tbody>
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td>US102 </td>
			<td>Sección hero de landing page </td>
			<td>Como visitante quiero visualizar una sección hero en el landing page para tener una idea sobre lo que ofrece la aplicación </td>
			<td>

Escenario 1: Visualización de la presentación de la aplicación

Dado que el visitante está en el landing page

Cuando se encuentra en la sección de hero

Entonces observa una presentación clara de la aplicación.<!-- Criterios de Aceptación: use viñetas o separe con ; --> </td>
<td>E1 </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	<tbody>
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td>US103 </td>
			<td>Sección de caracteristicas del producto de landing page </td>
			<td>Como visitante quiero visualizar características de la aplicación en el landing page para saber sobre las características que ofrece la aplicación</td>
			<td>

Escenario 1: Visualización de características del producto

Dado que el visitante está en el landing page

Cuando se encuentra en la sección de características del producto

Entonces observa la información detallada de las características de la aplicación.<!-- Criterios de Aceptación: use viñetas o separe con ; --> </td>
<td>E1 </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	<tbody>
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td>US102 </td>
			<td>Sección hero de landing page </td>
			<td>Como visitante quiero visualizar una sección hero en el landing page para tener una idea sobre lo que ofrece la aplicación </td>
			<td>

Escenario 1: Visualización de la presentación de la aplicación

Dado que el visitante está en el landing page

Cuando se encuentra en la sección de hero

Entonces observa una presentación clara de la aplicación.<!-- Criterios de Aceptación: use viñetas o separe con ; --> </td>
<td>E1 </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	
	
<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US201</td>
	<td>Registrar un profesional</td>
	<td>Como mecánico o taller automotriz. Quiero poder registrarme fácilmente en la plataforma SafeCar. Para ofrecer mis servicios, recibir alertas de clientes cercanos y gestionar mis citas.</td>
	<td>
Escenario 01: Registro exitoso. Dado que soy un profesional interesado en ofrecer servicios, Cuando completo correctamente el formulario de registro con mis datos (nombre del taller, especialidad, ubicación y contacto) y lo envío, Entonces el sistema guarda la información, envía una notificación de recepción y muestra un mensaje indicando que el perfil será revisado. Escenario 02: Fallo en el registro. Dado que soy un profesional que intenta registrarse, Cuando dejo campos obligatorios vacíos o ingreso datos inválidos, Entonces el sistema muestra mensajes de error y no permite enviar el formulario hasta corregir los datos.
	</td>
	<td>E2</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US202</td>
	<td>Registrar un cliente</td>
	<td>Como conductor. Quiero poder registrarme fácilmente en la plataforma SafeCar. Para acceder a los servicios de mantenimiento de mi vehículo y conectar con mecánicos de confianza.</td>
	<td>
Escenario 01: Registro exitoso. Dado que soy un nuevo cliente que desea registrarse, Cuando completo correctamente el formulario de registro con mis datos (nombre, correo, modelo de vehículo), Entonces el sistema crea mi cuenta, me muestra un mensaje de bienvenida y me redirige al panel de usuario o inicio. Escenario 02: Registro con errores o campos incompletos. Dado que intento registrarme con un correo ya registrado, Cuando ingreso el correo electrónico y lo envío, Entonces el sistema me notifica que ya existe una cuenta con ese correo y me sugiere iniciar sesión o recuperar la contraseña
	<td>E2</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US203</td>
	<td>Visualización de la landing page de SafeCar</td>
	<td>Quiero visualizar una landing page clara y atractiva de SafeCar. Para conocer los beneficios de la plataforma, entender cómo funciona y acceder fácilmente a las opciones de registro o inicio de sesión.</td>
	<td>
Escenario 01: Acceso a la información general. Dado que soy un visitante, Cuando ingreso a la landing page de SafeCar, Entonces visualizo una presentación clara con la propuesta de valor, secciones de beneficios y cómo funciona. Escenario 02: Acceso a opciones de registro. Dado que soy un visitante interesado, Cuando hago clic en “Registrarme como cliente” o “Registrarme como taller”, Entonces el sistema me redirige al formulario de registro correspondiente. Escenario 03: Acceso a inicio de sesión. Dado que soy un usuario registrado, Cuando selecciono “Iniciar sesión”, Entonces el sistema me dirige al login de la plataforma.
	<td>E2</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>



<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US301</td>
	<td>Conectar mi vehículo mediante dispositivo IoT</td>
	<td>Como conductor. Quiero conectar mi auto al dispositivo IoT desde la app. Para recibir diagnósticos y alertas en tiempo real.</td>
	<td>
Escenario 01: Conexión exitosa. Dado que soy un conductor, Cuando activo el Bluetooth y selecciono el dispositivo IoT, Entonces la app confirma la conexión y muestra el estado del vehículo.
Escenario 02: Error de conexión. Dado que intento conectar el dispositivo, Cuando el sistema no lo detecta, Entonces la app muestra un mensaje de error con instrucciones para reintentar.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>



<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US302</td>
	<td>Visualizar alertas de mantenimiento preventivo</td>
	<td>Como conductor. Quiero recibir notificaciones en mi celular sobre posibles fallas para evitar reparaciones costosas y accidentes.</td>
	<td>
Escenario 01: Notificación push. Dado que el IoT detecta un problema, Cuando se genera una alerta, Entonces recibo una notificación push con el detalle.
Escenario 02: Alerta en la app. Dado que entro a la app, Cuando accedo al panel, Entonces veo la alerta en la sección de notificaciones.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>


<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US303</td>
	<td>Consultar historial de mantenimientos</td>
	<td>Como conductor. Quiero revisar en la app el historial de reparaciones y mantenimientos. Para tener un control organizado de mi vehículo.</td>
	<td>
Escenario 01: Visualización. Dado que soy un conductor registrado, Cuando accedo a la sección de historial, Entonces la app muestra una lista con mantenimientos anteriores.
Escenario 02: Filtrado. Dado que quiero buscar información específica, Cuando selecciono por fecha o tipo de servicio, Entonces la app filtra los resultados correctamente.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>


<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US304</td>
	<td>Agendar cita con taller</td>
	<td>Como conductor. Quiero agendar una cita en un taller disponible desde la app. Para resolver problemas detectados y ahorrar tiempo.</td>
	<td>
Escenario 01: Selección de taller. Dado que soy un conductor, Cuando busco un taller en la app, Entonces veo una lista de talleres cercanos con disponibilidad.
Escenario 02: Reserva exitosa. Dado que selecciono fecha y hora, Cuando confirmo la cita, Entonces la app me muestra un mensaje de confirmación y guarda la cita en mi calendario.
Escenario 03: Error sin cupos. Dado que intento reservar, Cuando no hay horarios disponibles, Entonces la app muestra un mensaje indicando que debo elegir otra fecha.	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US305</td>
	<td>Gestionar citas como taller</td>
	<td>Como mecánico/taller. Quiero recibir solicitudes de citas en la app. Para organizar mis reservas y atender clientes.</td>
	<td>
Escenario 01: Ver citas pendientes. Dado que soy un taller, Cuando accedo al panel de citas, Entonces la app muestra una lista de solicitudes nuevas.
Escenario 02: Confirmación o rechazo. Dado que recibí una cita, Cuando selecciono “Aceptar” o “Rechazar”, Entonces la app notifica al cliente con la respuesta.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US306</td>
	<td>Chat entre cliente y taller</td>
	<td>Como usuario (conductor o taller). Quiero comunicarme mediante chat dentro de la app. Para coordinar detalles de mantenimientos.</td>
	<td>
Escenario 01: Enviar mensaje. Dado que soy un cliente o taller, Cuando escribo un mensaje en el chat, Entonces este se envía y aparece en la conversación.
Escenario 02: Notificación al receptor. Dado que recibo un mensaje nuevo, Cuando no tengo la app abierta, Entonces me llega una notificación push informando.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US307</td>
	<td>Acceder a reportes de diagnóstico detallados</td>
	<td>Como conductor. Quiero visualizar reportes generados por el dispositivo IoT en la app. Para entender el estado real de mi vehículo.</td>
	<td>
Escenario 01: Reporte en panel. Dado que soy un conductor con un IoT conectado, Cuando accedo a la sección de reportes, Entonces visualizo los datos en gráficos e indicadores.
Escenario 02: Exportar reporte. Dado que quiero guardar el diagnóstico, Cuando selecciono la opción exportar, Entonces la app me permite descargar en PDF o compartir por correo.
	<td>E3</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>





  

<!-- FIN: Tabla de User Stories (Epic/Story) -->

	

## 3.2. Impact Mapping.



## 3.3. Product Backlog.

<!-- INICIO: Tabla de product backlog -->
<!-- Descripción: Tabla para registrar historias de usuario con # Orden, User Story ID, título, descripción y story points. -->
<table border="1" width="100%" style="border-collapse: collapse;">
	<thead>
		<tr>
			<th><!-- Columna 01 --> # Orden</th>
			<th><!-- Columna 02 --> User Story Id</th>
			<th><!-- Columna 03 --> Título</th>
			<th><!-- Columna 04 --> Descripción </th>
			<th><!-- Columna 05 --> Story Points (1 / 2 / 3 / 5 / 8)</th>
		</tr>
	</thead>
	<tbody>
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td><!-- # Orden --> </td>
			<td><!-- User Story Id --> </td>
			<td><!-- Título --> </td>
			<td><!-- Descripción --> </td>
			<td><!-- Story Points --> </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	<!-- Nota: Mantenga los IDs consistentes con el backlog y el repositorio de seguimiento. -->
</table>
<!-- FIN: Tabla de User Stories -->





