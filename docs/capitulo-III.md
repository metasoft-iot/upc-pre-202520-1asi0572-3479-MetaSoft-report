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
		<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
		<tr>
			<td>E1: 	
						</td>
			<td>Epic 1: Landing page </td>
			<td>Como visitante
						Quiero visualizar una página
						Para saber acerca de la aplicación e ingresar a la aplicación </td>
		</tr>
		<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
	</tbody>
	<!-- Nota: Mantenga IDs consistentes con su backlog/jira y el repositorio de seguimiento. -->
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
	<td>US</td>
	<td>Registrar un profesional</td>
	<td>Como mecánico o taller automotriz. Quiero poder registrarme fácilmente en la plataforma SafeCar. Para ofrecer mis servicios, recibir alertas de clientes cercanos y gestionar mis citas.</td>
	<td>
Escenario 01: Registro exitoso. Dado que soy un profesional interesado en ofrecer servicios, Cuando completo correctamente el formulario de registro con mis datos (nombre del taller, especialidad, ubicación y contacto) y lo envío, Entonces el sistema guarda la información, envía una notificación de recepción y muestra un mensaje indicando que el perfil será revisado. Escenario 02: Fallo en el registro. Dado que soy un profesional que intenta registrarse, Cuando dejo campos obligatorios vacíos o ingreso datos inválidos, Entonces el sistema muestra mensajes de error y no permite enviar el formulario hasta corregir los datos.
	</td>
	<td>E</td>
</tr>
<!-- Sugerencia: agregue más filas arriba o abajo de esta sección -->
</tbody>

<tbody>
<!-- Fila plantilla: copie/pegue esta fila y complete los valores -->
<tr>
	<td>US</td>
	<td>Registrar un cliente</td>
	<td>Como conductor. Quiero poder registrarme fácilmente en la plataforma desde la landing page. Para acceder a los servicios de mantenimiento inteligente de mi vehículo y conectar con mecánicos de confianza.</td>
	<td>
Escenario 01: Registro exitoso. Dado que soy un nuevo cliente que desea registrarse, Cuando completo correctamente el formulario de registro con mis datos (nombre, correo, modelo de vehículo), Entonces el sistema crea mi cuenta, me muestra un mensaje de bienvenida y me redirige al panel de usuario o inicio. Escenario 02: Registro con errores o campos incompletos. Dado que intento registrarme con un correo ya registrado, Cuando ingreso el correo electrónico y lo envío, Entonces el sistema me notifica que ya existe una cuenta con ese correo y me sugiere iniciar sesión o recuperar la contraseña.
	</td>
	<td>E1</td>
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





