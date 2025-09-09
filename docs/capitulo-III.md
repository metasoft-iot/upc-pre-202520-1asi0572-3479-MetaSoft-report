# Capítulo III: Requirements Specification

## 3.1. User Stories

<p align="justify"> En esta sección se definen los <em>Epics</em> y <em>User Stories</em> correspondientes a los requisitos identificados para el desarrollo de <strong>SafeCar</strong>. Cada historia se describe considerando el rol del usuario, la funcionalidad requerida y el valor esperado, junto con un conjunto de <strong>Criterios de Aceptación</strong> redactados bajo la estructura <em>Given–When–Then</em> (Gherkin), asegurando claridad, verificabilidad y alineación con la metodología de <em>Behavior-Driven Development (BDD)</em>. </p> <p align="justify"> El conjunto de historias incluye las funcionalidades clave de los distintos componentes del ecosistema SafeCar: la <strong>Landing Page</strong>, la <strong>Aplicación Web</strong>, la <strong>Aplicación Móvil</strong>, el <strong>Backend</strong> desarrollado en <strong>Java + Spring Boot</strong>, y el <strong>Dispositivo IoT</strong>. Asimismo, se han considerado <em>Technical Stories</em> para aquellos features que no tienen interacción directa con los usuarios finales, tales como las integraciones y APIs de soporte. </p> <p align="justify"> Todas las historias se presentan en un único cuadro consolidado, con una línea dedicada a cada Epic o User Story. Esto permite mantener la trazabilidad y asegurar la cobertura de los requisitos de negocio, experiencia de usuario y necesidades técnicas del sistema. </p>

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
		<!--EPIC 01-->
		<tr>
			<td>
				<b>E01</b>
			</td>
			<td>Landing Page</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> explorar una página clara con navegación por secciones, poder cambiar el idioma y tener un acceso directo a la aplicación web, <b>Para</b> comprender el valor de SafeCar y continuar al producto.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 01-->
		<tr>
			<td>
				US101
			</td>
			<td>
				Barra de navegación en landing page por secciones
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> desplazarme entre las secciones principales de la página <b>Para</b> encontrar la información que necesito sin perder tiempo.
			</td>
			<td >
				<p><strong>Escenario 1: Accede a Inicio</strong>
					<br/> Dado que el visitante está en la landing<br/> Cuando selecciona “Inicio” en la navegación<br/> Entonces visualiza la sección de presentación del producto.
				</p>
				<p><strong>Escenario 2: Accede a Características</strong><br/>
					Dado que el visitante está en la landing<br/>
					Cuando selecciona “Características”<br/>
					Entonces visualiza la sección que resume el valor y funciones de SafeCar.
				</p>
				<p><strong>Escenario 3: Accede a Planes</strong><br/>
				Dado que el visitante está en la landing<br/>
				Cuando selecciona “Planes”<br/>
				Entonces visualiza la sección con los planes disponibles.
				</p>
				<p><strong>Escenario 4: Accede a Testimonios</strong><br/>
				Dado que el visitante está en la landing<br/>
				Cuando selecciona “Testimonios”<br/>
				Entonces visualiza la sección con opiniones de usuarios.
				</p>
				<p><strong>Escenario 5: Accede a Contacto</strong><br/>
				Dado que el visitante está en la landing<br/>
				Cuando selecciona “Contacto”<br/>
				Entonces visualiza el formulario para enviar un mensaje.
				</p>
			</td>
			<td>
			E01
			</td>
		</tr>
		<!--USER STORY 02-->
		<tr>
			<td>
				US102
			</td>
			<td>
				Acceso visible a la aplicación web
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> un acceso claro hacia la aplicación web <b>Para</b> continuar con el uso del servicio cuando lo decida.
			</td>
			<td>
				<p><strong>Escenario 1: Acceso desde presentación</strong><br/>
				Dado que el visitante está en la sección de presentación<br/>
				Cuando activa el acceso directo a la aplicación<br/>
				Entonces el sistema lo dirige a la URL pública de la aplicación web.
				</p>
				<p><strong>Escenario 2: Acceso disponible en todo momento</strong><br/>
				Dado que el visitante navega por cualquier sección<br/>
				Cuando decide continuar al producto<br/>
				Entonces encuentra un acceso visible hacia la aplicación web.
				</p>
				<p><strong>Escenario 3: Acceso rastreable</strong><br/>
				Dado que el visitante usa el acceso a la aplicación<br/>
				Cuando se realiza la redirección<br/>
				Entonces el sistema registra el evento de salida hacia la aplicación.
				</p>
			</td>
			<td>
			E01
			</td>
		</tr>
		<!--USER STORY 03-->
		<tr>
			<td>
				US103
			</td>
			<td>
				Cambio de idioma en landing page (ES/EN)
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> cambiar el idioma de la página entre español e inglés <b>Para</b> leer la información en mi idioma preferido.
			</td>
			<td>
				<p><strong>Escenario 1: Cambia a inglés</strong><br/>
				Dado que el visitante visualiza la página en español<br/>
				Cuando elige inglés como idioma<br/>
				Entonces todos los textos visibles se muestran en inglés.
				</p>
				<p><strong>Escenario 2: Cambia a español</strong><br/>
				Dado que el visitante visualiza la página en inglés<br/>
				Cuando elige español como idioma<br/>
				Entonces todos los textos visibles se muestran en español.
				</p>
				<p><strong>Escenario 3: Persistencia de idioma</strong><br/>
				Dado que el visitante seleccionó un idioma<br/>
				Cuando recarga la página o navega entre secciones<br/>
				Entonces la página se mantiene en el idioma elegido.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 04-->
		<tr>
			<td>US104</td>
			<td>Visualización de planes y precios</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> ver claramente los planes y precios de SafeCar <b>Para</b> evaluar cuál se ajusta mejor a mis necesidades.
			</td>
			<td>
				<p><strong>Escenario 1: Muestra planes</strong><br/>
				Dado que el visitante accede a la sección de planes<br/>
				Cuando visualiza la información<br/>
				Entonces encuentra al menos un plan con beneficios y precio.
				</p>
				<p><strong>Escenario 2: Comparación simple</strong><br/>
				Dado que hay más de un plan<br/>
				Cuando el visitante revisa sus beneficios<br/>
				Entonces puede distinguir diferencias de valor entre planes.
				</p>
				<p><strong>Escenario 3: Intención de selección</strong><br/>
				Dado que el visitante está en la sección de planes<br/>
				Cuando indica interés en un plan<br/>
				Entonces el sistema registra el interés para análisis.
				</p>
				<p><strong>Escenario 4: Registro de interacción</strong><br/>
				Dado que el visitante está en la sección de planes<br/>
				Cuando indica interés en un plan<br/>
				Entonces el sistema registra el interés para análisis.
				</p>
			</td>
			<td>E01</td>
		</tr>
		<!--USER STORY 05-->
		<tr>
			<td>US105</td>
			<td>Lectura de testimonios</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> leer opiniones de usuarios sobre SafeCar <b>Para</b> confiar en la plataforma antes de registrarme.
			</td>
			<td>
				<p><strong>Escenario 1: Muestra testimonios</strong><br/>
				Dado que el visitante accede a la sección de testimonios<br/>
				Cuando visualiza la información<br/>
				Entonces encuentra opiniones con nombre y fecha o contexto.
				</p>
				<p><strong>Escenario 2: Idioma coherente</strong><br/>
				Dado que la página está en un idioma<br/>
				Cuando el visitante revisa los testimonios<br/>
				Entonces los textos se presentan en el mismo idioma elegido.	
				</p>
				<p><strong>Escenario 3: Cantidad mínima</strong><br/>
				Dado que el visitante revisa la sección<br/>
				Cuando se muestran testimonios<br/>
				Entonces hay al menos dos opiniones visibles.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 06-->
		<tr>
			<td>US106</td>
			<td>Sección “Acerca de” con explicación y video</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> entender la misión y visión de SafeCar <b>Para</b> confiar en la plataforma antes de registrarme.
			</td>
			<td>
				<p><strong>Escenario 1: Contenido informativo</strong><br/>
      	Dado que el visitante accede a la sección “Acerca de”<br/>
      	Cuando lee el contenido<br/>
      	Entonces comprende el propósito general y beneficios del producto.
				</p>
				<p><strong>Escenario 2: Reproducción de video</strong><br/>
				Dado que el video está disponible<br/>
				Cuando el visitante inicia la reproducción<br/>
				Entonces el video se muestra correctamente en el dispositivo.
				</p>
				<p><strong>Escenario 3: Idioma del contenido</strong><br/>
				Dado que el visitante cambió el idioma del sitio<br/>
				Cuando revisa esta sección<br/>
				Entonces los textos se muestran en el idioma seleccionado.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 07-->
		<tr>
			<td>US107</td>
			<td>Sección “Nuestro equipo”</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> conocer al equipo detrás de SafeCar <b>Para</b> aumentar mi confianza en el proyecto.
			</td>
			<td>
				<p><strong>Escenario 1: Presencia de equipo</strong><br/>
				Dado que el visitante accede a la sección del equipo<br/>
				Cuando visualiza la información<br/>
				Entonces encuentra al menos un bloque que presenta al equipo o sus roles.
				</p>
				<p><strong>Escenario 2: Coherencia visual</strong><br/>
				Dado que el visitante recorre la sección<br/>
				Cuando observa los bloques<br/>
				Entonces el formato es consistente con el resto de la página.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 08-->
		<tr>
			<td>US108</td>
			<td>
				Formulario de contacto
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> enviar mis datos de contacto y un mensaje <b>Para</b> recibir más información o resolver dudas.
			</td>
			<td>
				<p><strong>Escenario 1: Envío válido</strong><br/>
				Dado que el visitante completa nombre, correo y mensaje válidos<br/>
				Cuando envía el formulario<br/>
				Entonces el sistema registra la solicitud y muestra confirmación de envío.
				</p>
				<p><strong>Escenario 2: Validación de campos</strong><br/>
				Dado que el visitante deja campos requeridos vacíos o con formato inválido<br/>
				Cuando intenta enviar<br/>
				Entonces el sistema indica qué corregir sin perder la información ingresada.
				</p>
				<p><strong>Escenario 3: Idioma del mensaje de confirmación</strong><br/>
				Dado que el sitio está en un idioma<br/>
				Cuando se confirma el envío<br/>
				Entonces el mensaje de confirmación se muestra en el idioma activo.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 09-->
		<tr>
			<td>US109</td>
			<td>Redes sociales en el pie de página</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> acceder a las redes sociales oficiales desde el pie de página <b>Para</b> seguir las novedades de SafeCar.
			</td>
			<td>
				<p><strong>Escenario 1: Acceso a redes</strong><br/>
				Dado que el visitante está en el pie de página<br/>
				Cuando selecciona una red social<br/>
				Entonces el sistema abre el perfil oficial correspondiente.
			</p>
			<p><strong>Escenario 2: Consistencia de idioma</strong><br/>
				Dado que el visitante cambió el idioma del sitio<br/>
				Cuando revisa el pie de página<br/>
				Entonces los textos del pie respetan el idioma activo.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 10-->
		<tr>
			<td>US110</td>
			<td>
				Visualización correcta en distintos dispositivos
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> que la página se vea bien desde mi celular o computadora <b>Para</b> acceder cómodamente desde cualquier lugar.
			</td>
			<td>
				<p><strong>Escenario 1: Teléfono</strong><br/>
				Dado que el visitante usa un teléfono<br/>
				Cuando navega por cualquier sección<br/>
				Entonces el contenido se muestra sin desbordes y es legible.
				</p>
				<p><strong>Escenario 2: Computadora</strong><br/>
				Dado que el visitante usa una computadora<br/>
				Cuando navega por cualquier sección<br/>
				Entonces el contenido se muestra aprovechando el ancho disponible.
				</p>
				<p><strong>Escenario 3: Tableta</strong><br/>
				Dado que el visitante usa una tableta<br/>
				Cuando recorre las secciones<br/>
				Entonces los bloques se organizan de forma clara y usable.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--USER STORY 11-->
		<tr>
			<td>US111</td>
			<td>
				Carga rápida y accesible
			</td>
			<td>
				<b>Como</b> visitante <b>Quiero</b> que la página cargue rápido y sea fácil de navegar <b>Para</b> no frustrarme ni abandonar el sitio.
			</td>
			<td>
				<p><strong>Escenario 1: Tiempo de carga</strong><br/>
				Dado que el visitante accede por primera vez<br/>
				Cuando solicita la landing<br/>
				Entonces la página responde dentro de un tiempo aceptable para conexiones comunes.</p>
				<p><strong>Escenario 2: Navegación con teclado</strong><br/>
				Dado que el visitante usa teclado para navegar<br/>
				Cuando recorre enlaces y acciones<br/>
				Entonces puede alcanzar y activar los elementos principales.
				</p>
			 <p><strong>Escenario 3: Textos alternativos</strong><br/>
				Dado que existen imágenes informativas<br/>
				Cuando el visitante utiliza lectores de pantalla<br/>
				Entonces encuentra textos alternativos significativos.
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
	</tbody>
</table>

## 3.2. Impact Mapping

## 3.3. Product Backlog

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
