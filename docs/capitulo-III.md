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
			<td align="justify">
				<b>Como</b> visitante <b>quiero</b> entender que ofrece SafeCar y acceder desde la web <b>para</b> tomar una decisión informada.
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
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> desplazarme entre las secciones de la página <b>para</b> encontrar rapidamente la informacion que necesito, sin perder tiempo.
			</td>
			<td >
				<p><strong>Escenario 1: Accede a Inicio</strong><br/>
					<b>Dado</b> que el visitante está en la landing<br/> 
					<b>Cuando</b> selecciona la opción “Inicio”<br/> 
					<b>Entonces</b> visualiza la sección de presentación del producto
				</p>
				<p><strong>Escenario 2: Accede a Características</strong><br/>
					<b>Dado</b> que el visitante está en la landing<br/>
					<b>Cuando</b> selecciona la opción “Características”<br/>
					<b>Entonces</b> visualiza la sección que resume el valor y funciones de SafeCar
				</p>
				<p><strong>Escenario 3: Accede a Planes</strong><br/>
					<b>Dado</b> que el visitante está en la landing<br/>
					<b>Cuando</b> selecciona la opción “Planes”<br/>
					<b>Entonces</b> visualiza la sección con los planes disponibles
				</p>
				<p><strong>Escenario 4: Accede a Testimonios</strong><br/>
					<b>Dado</b> que el visitante está en la landing<br/>
					<b>Cuando</b> selecciona “Testimonios”<br/>
					<b>Entonces</b> visualiza la sección con opiniones de usuarios
				</p>
				<p><strong>Escenario 5: Accede a Contacto</strong><br/>
					<b>Dado</b> que el visitante está en la landing<br/>
					<b>Cuando</b> selecciona “Contacto”<br/>
					<b>Entonces</b> visualiza el formulario para enviar un mensaje
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
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> un acceso visible hacia la aplicación web <b>para</b> continuar con el uso del servicio cuando lo decida.
			</td>
			<td>
				<p><strong>Escenario 1: Acceso desde presentación</strong><br/>
					<b>Dado</b> que el visitante está en la sección de presentación<br/>
					<b>Cuando</b> activa el acceso directo a la aplicación<br/>
					<b>Entonces</b> el sistema lo dirige a la URL pública de la aplicación web
				</p>
				<p><strong>Escenario 2: Acceso disponible en todo momento</strong><br/>
					<b>Dado</b> que el visitante navega por cualquier sección<br/>
					<b>Cuando</b> decide continuar al producto<br/>
					<b>Entonces</b> encuentra un acceso visible hacia la aplicación web
				</p>
				<p><strong>Escenario 3: Acceso rastreable</strong><br/>
					<b>Dado</b> que el visitante usa el acceso a la aplicación<br/>
					<b>Cuando</b> se realiza la redirección<br/>
					<b>Entonces</b> el sistema registra el evento de salida hacia la aplicación
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
				<b>Como</b> visitante, <b>quiero</b> cambiar el idioma de la página <b>para</b> leer la información en el idioma que prefiera.
			</td>
			<td>
				<p><strong>Escenario 1: Cambia a idioma de preferencia</strong><br/>
					<b>Dado</b> que el visitante está viendo la página en un idioma<br/>
					<b>Cuando</b> elige otro idioma<br/>
					<b>Entonces</b> todos el contenido visible se muestran en el idioma elegido
				</p>
				<p><strong>Escenario 2: Persistencia de idioma</strong><br/>
					<b>Dado</b> que el visitante seleccionó un idioma<br/>
					<b>Cuando</b> recarga la página, cierra y vuelve a abrir el navegador o navega a otra URL de la aplicación<br/>
					<b>Entonces</b> la interfaz de la aplicación se carga inmediatamente en el idioma elegido
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
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> ver claramente los planes y precios de SafeCar <b>para</b> evaluar cuál se ajusta mejor a mis necesidades.
			</td>
			<td>
				<p><strong>Escenario 1: Muestra planes</strong><br/>
					<b>Dado</b> que el visitante accede a la sección de planes<br/>
					<b>Cuando</b> visualiza la información<br/>
					<b>Entonces</b> encuentra al menos un plan con beneficios y precio
				</p>
				<p><strong>Escenario 2: Comparación simple</strong><br/>
					<b>Dado</b> que hay más de un plan<br/>
					<b>Cuando</b> el visitante revisa sus beneficios<br/>
					<b>Entonces</b> puede distinguir diferencias de valor entre planes
				</p>
				<p><strong>Escenario 3: Intención de selección</strong><br/>
					<b>Dado</b> que el visitante está en la sección de planes<br/>
					<b>Cuando</b> indica interés en un plan<br/>
					<b>Entonces</b> el sistema registra el interés para análisis
				</p>
				<p><strong>Escenario 4: CTA visible por plan</strong><br/>
					<b>Dado</b> que el visitante revisa la sección de planes<br/>
					<b>Cuando</b> observa cada tarjeta de plan<br/>
					<b>Entonces</b> cada plan muestra un botón claro de “Empezar” o “Más detalles”
				</p>
			</td>
			<td>E01</td>
		</tr>
		<!--USER STORY 05-->
		<tr>
			<td>US105</td>
			<td>Lectura de testimonios</td>
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> leer opiniones de usuarios sobre SafeCar <b>para</b> confiar en la plataforma antes de registrarme.
			</td>
			<td>
				<p><strong>Escenario 1: Muestra testimonios</strong><br/>
					<b>Dado</b> que el visitante accede a la sección de testimonios<br/>
					<b>Cuando</b> visualiza la información<br/>
					<b>Entonces</b> encuentra opiniones con nombre y fecha o contexto
				</p>
				<p><strong>Escenario 2: Cantidad mínima</strong><br/>
					<b>Dado</b> que el visitante revisa la sección<br/>
					<b>Cuando</b> se muestran testimonios<br/>
					<b>Entonces</b> hay al menos dos opiniones visibles
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
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> entender la misión y visión de SafeCar <b>para</b> confiar en la plataforma antes de registrarme.
			</td>
			<td>
				<p><strong>Escenario 1: Contenido informativo</strong><br/>
					<b>Dado</b> que el visitante accede a la sección “Acerca de”<br/>
					<b>Cuando</b> lee el contenido<br/>
					<b>Entonces</b> comprende el propósito general y beneficios del producto
				</p>
				<p><strong>Escenario 2: Reproducción de video</strong><br/>
					<b>Dado</b> que el video está disponible<br/>
					<b>Cuando</b> el visitante inicia la reproducción<br/>
					<b>Entonces</b> el video se muestra correctamente en el dispositivo
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
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> conocer al equipo detrás de SafeCar <b>para</b> aumentar mi confianza en el proyecto.
			</td>
			<td>
				<p><strong>Escenario 1: Presencia de equipo</strong><br/>
				<b>Dado</b> que el visitante accede a la sección "Nuestro equipo"<br/>
				<b>Cuando</b> visualiza la información<br/>
				<b>Entonces</b> encuentra al menos un bloque que presenta al equipo o sus roles
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
				Sección "Formulario de contacto"
			</td>
			<td align="justify">
				<b>Como</b> visitante, <b>quiero</b> enviar mis datos de contacto y un mensaje <b>para</b> recibir más información o resolver dudas.
			</td>
			<td>
				<p><strong>Escenario 1: Envío válido</strong><br/>
				<b>Dado</b> que el visitante completa sus credenciales válidas<br/>
				<b>Cuando</b> envía el formulario<br/>
				<b>Entonces</b> el sistema registra la solicitud y muestra confirmación de envío
				</p>
				<p><strong>Escenario 2: Validación de campos</strong><br/>
				<b>Dado</b> que el visitante deja campos requeridos vacíos o con formato inválido<br/>
				<b>Cuando</b> intenta enviar<br/>
				<b>Entonces</b> el sistema indica qué corregir sin perder la información ingresada
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
			<td align="justify">
				<b>Como</b> visitante <b>quiero</b> acceder a las redes sociales oficiales desde el pie de página <b>para</b> seguir las novedades de SafeCar.
			</td>
			<td>
				<p><strong>Escenario 1: Acceso a redes</strong><br/>
				<b>Dado</b> que el visitante está en el pie de página<br/>
				<b>Cuando</b> selecciona una red social<br/>
				<b>Entonces</b> el sistema redirije al visitante a la página oficial correspondiente
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
			<td align="justify">
				<b>Como</b> visitante, <b>deseo</b> que la página se vea bien en cualquier dispositivo <b>para</b> acceder cómodamente desde cualquier lugar.
			</td>
			<td>
				<p><strong>Escenario 1: Visualización de la página en teléfono</strong><br/>
				<b>Dado</b> que el visitante usa un teléfono<br/>
				<b>Cuando</b> navega por cualquier sección<br/>
				<b>Entonces</b> el contenido se muestra legible
				</p>
				<p><strong>Escenario 2: Visualización de la página en computadora</strong><br/>
				<b>Dado</b> que el visitante usa una computadora<br/>
				<b>Cuando</b> navega por cualquier sección<br/>
				<b>Entonces</b> el contenido se muestra legible
				</p>
				<p><strong>Escenario 3: Visualización de la página en tablet</strong><br/>
				<b>Dado</b> que el visitante usa una tablet<br/>
				<b>Cuando</b> navega por cualquier sección<br/>
				<b>Entonces</b> el contenido se muestra legible
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
			<td align="justify">
				<b>Como</b> visitante, <b>deseo</b> que la landing page cargue rápido y sea fácil de navegar <b>para</b> no frustrarme ni abandonar el sitio.
			</td>
			<td>
				<p><strong>Escenario 1: Tiempo de carga</strong><br/>
					<b>Dado</b> que el visitante accede al landing page<br/>
					<b>Cuando</b> solicita la carga del mismo<br/>
					<b>Entonces</b> la landing page se carga en un tiempo aceptable, permitiendo una experiencia fluida</p>
				<p><strong>Escenario 2: Navegación con teclado</strong><br/>
					<b>Dado</b> que el visitante usa teclado para navegar en la landing page<br/>
					<b>Cuando</b> recorre los enlaces y elementos interactivos<br/>
					<b>Entonces</b> puede alcanzar y activar los elementos principales sin dificultades
				</p>
			 	<p><strong>Escenario 3: Textos alternativos</strong><br/>
					<b>Dado</b> que existen imágenes informativas<br/>
					<b>Cuando</b> el visitante utiliza lectores de pantalla<br/>
					<b>Entonces</b> encuentra textos alternativos significativos
				</p>
			</td>
			<td>
				E01
			</td>
		</tr>
		<!--EPIC 02-->
		<tr>
			<td><b>E02</b></td>
			<td>Autenticación y Cuentas</td>
			<td>
				<b>Como</b> usuario de SafeCar (conductor o mecánico), <b>deseo</b> gestionar mi acceso y mis datos de cuenta <b>para</b> usar de forma segura las funciones de la app y mantener mi información actualizada.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 12-->
		<tr>
			<td>US201</td>
			<td>Iniciar sesión con credenciales</td>
			<td align="justify">
				<b>Como</b> usuario registrado, <b>deseo</b> iniciar sesión con mis credenciales <b>para</b> acceder a mis datos de cuenta y funcionalidades.
			</td>
			<td>
				<p><strong>Escenario 1: Credenciales válidas</strong><br/>
				<b>Dado</b> que el usuario tiene una cuenta activa<br/>
				<b>Cuando</b> proporciona credenciales correctas<br/>
				<b>Entonces</b> el sistema le concede acceso a su cuenta</p>
				<p><strong>Escenario 2: Credenciales inválidas</strong><br/>
				<b>Dado</b> que el usuario intenta autenticarse<br/>
				<b>Cuando</b> las credenciales son incorrectas<br/>
				<b>Entonces</b> el sistema rechaza el acceso e informa el error</p>
				<p><strong>Escenario 3: Cuenta bloqueada</strong><br/>
				<b>Dado</b> que el usuario tiene la cuenta bloqueada<br/>
				<b>Cuando</b> intenta autenticarse<br/>
				<b>Entonces</b> el sistema deniega el acceso e informa el estado de la cuenta</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 13-->
		<tr>
			<td>US202</td>
			<td>Registro de cuenta</td>
			<td>
				<b>Como</b> nuevo usuario, <b>deseo</b> registrarme con mis datos básicos <b>para</b> crear una cuenta en SafeCar y comenzar a usar el sistema.
			</td>
			<td>
				<p><strong>Escenario 1: Registro exitoso</strong><br/>
				<b>Dado</b> que el usuario proporciona información válida<br/>
				<b>Cuando</b> envía la solicitud de registro<br/>
				<b>Entonces</b> el sistema crea la cuenta y la deja disponible para autenticación</p>
				<p><strong>Escenario 2: Datos inválidos</strong><br/>
				<b>Dado</b> que el usuario introduce datos con formato incorrecto o incompleto<br/>
				<b>Cuando</b> solicita el registro<br/>
				<b>Entonces</b> el sistema rechaza la creación e informa el error</p>
				<p><strong>Escenario 3: Email ya existente</strong><br/>
				<b>Dado</b> que el correo ya existe en el sistema<br/>
				<b>Cuando</b> el usuario intenta registrarse<br/>
				<b>Entonces</b> el sistema rechaza la solicitud e informa que ya está registrado</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 14-->
		<tr>
			<td>US203</td>
			<td>Recuperar contraseña</td>
			<td>
				<b>Como</b> usuario, <b>deseo</b> restablecer mi contraseña a través de un enlace temporal <b>para</b> recuperar el acceso a mi cuenta registrada.
			</td>
			<td>
				<p><strong>Escenario 1: Solicitud válida</strong><br/>
				<b>Dado</b> que el usuario indica un correo existente<br/>
				<b>Cuando</b> solicita restablecer su contraseña<br/>
				<b>Entonces</b> el sistema genera un enlace temporal y lo envía al correo registrado</p>
				<p><strong>Escenario 2: Restablecimiento exitoso</strong><br/>
				<b>Dado</b> que el usuario recibe un enlace temporal vigente<br/>
				<b>Cuando</b> define una nueva contraseña válida<br/>
				<b>Entonces</b> el sistema actualiza la contraseña y habilita el inicio de sesión</p>
				<p><strong>Escenario 3: Enlace vencido</strong><br/>
				<b>Dado</b> que el usuario intenta usar un enlace temporal expirado<br/>
				<b>Cuando</b> solicita el restablecimiento<br/>
				<b>Entonces</b> el sistema deniega el acceso y ofrece generar uno nuevo</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 15-->
		<tr>
			<td>US204</td>
			<td>Cerrar sesión</td>
			<td>
				<b>Como</b> usuario autenticado, <b>deseo</b> cerrar sesión de manera segura <b>para</b> proteger mi cuenta.
			</td>
			<td>
				<p><strong>Escenario 1: Cierre manual</strong><br/>
				<b>Dado</b> que el usuario está autenticado<br/>
				<b>Cuando</b> solicita cerrar la sesión<br/>
				<b>Entonces</b> el sistema invalida la sesión y revoca el acceso</p>
				<p><strong>Escenario 2: Expiración por inactividad</strong><br/>
				<b>Dado</b> que el usuario no interactúa durante el tiempo configurado<br/>
				<b>Cuando</b> intenta acceder a una función protegida<br/>
				<b>Entonces</b> el sistema exige autenticación nuevamente</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 16-->
		<tr>
			<td>US205</td>
			<td>Mantener sesión iniciada</td>
			<td>
				<b>Como</b> usuario frecuente, <b>deseo</b> mantener mi sesión activa en mis dispositivos de confianza <b>para</b> evitar inicios repetidos.
			</td>
			<td>
				<p><strong>Escenario 1: Activación</strong><br/>
				<b>Dado</b> que el usuario solicita mantener su sesión iniciada<br/>
				<b>Cuando</b> la autenticación es correcta<br/>
				<b>Entonces</b> el sistema conserva la sesión activa según la política definida</p>
				<p><strong>Escenario 2: Cierre elimina persistencia</strong><br/>
				<b>Dado</b> que el usuario tiene sesión persistida<br/>
				<b>Cuando</b> solicita cerrar sesión<br/>
				<b>Entonces</b> el sistema invalida cualquier persistencia activa</p>
				<p><strong>Escenario 3: Sesión en dispositivo no confiable</strong><br/>
				<b>Dado</b> que el usuario no activa la persistencia<br/>
				<b>Cuando</b> finaliza la sesión<br/>
				<b>Entonces</b> el sistema no conserva acceso en ese dispositivo</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 17-->
		<tr>
			<td>US206</td>
			<td>Editar perfil</td>
			<td>
				<b>Como</b> usuario <b>deseo</b> modificar mis credenciales básicas de perfil <b>para</b> mantener mi información al día.
			</td>
			<td>
				<p><strong>Escenario 1: Actualización válida</strong><br/>
				<b>Dado</b> que el usuario está autenticado<br/>
				<b>Cuando</b> modifica datos válidos de su perfil<br/>
				<b>Entonces</b> el sistema guarda los cambios y actualiza la información</p>
				<p><strong>Escenario 2: Datos inválidos</strong><br/>
				<b>Dado</b> que el usuario introduce información en un formato incorrecto<br/>
				<b>Cuando</b> intenta actualizar el perfil<br/>
				<b>Entonces</b> el sistema rechaza los cambios e informa el error</p>
				<p><strong>Escenario 3: Datos obligatorios</strong><br/>
				<b>Dado</b> que el usuario elimina información obligatoria<br/>
				<b>Cuando</b> intenta guardar los cambios<br/>
				<b>Entonces</b> el sistema rechaza la acción y solicita completar los campos requeridos</p>
			</td>
			<td>E02</td>
		</tr>
		<!--EPIC 03-->
		<tr>
			<td><b>E03</b></td>
			<td>Diagnóstico y alertas (Aplicación Móvil)</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> recibir en mi móvil diagnósticos IoT y alertas preventivas <b>para</b> anticipar fallas y reducir averías imprevistas.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 18-->
		<tr>
			<td>US301</td>
			<td>Recepción de alertas en tiempo real</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> recibir alertas en el móvil cuando el sistema detecta problemas <b>para</b> actuar de inmediato y evitar daños mayores.
			</td>
			<td>
				<p><strong>Escenario 1: Alerta por falla detectada</strong><br/>
				<b>Dado</b> que un sensor detecta una anomalía<br/>
				<b>Cuando</b> se envía la alerta<br/>
				<b>Entonces</b> el conductor la recibe en su aplicación móvil en tiempo real</p>
				<p><strong>Escenario 2: Alerta preventiva de frenos</strong><br/>
				<b>Dado</b> que el sistema calcula un desgaste crítico en los frenos<br/>
				<b>Cuando</b> se alcanza el umbral de alcance de seguridad establecido<br/>
				<b>Entonces</b> la aplicación envía una notificación preventiva al conductor</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 19-->
		<tr>
			<td>US302</td>
			<td>Reporte de alertas</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> revisar el reporte de alertas recibidas <b>para</b> entender patrones de fallas y planificar mantenimientos.
			</td>
			<td>
				<p><strong>Escenario 1: Consulta de reportes</strong><br/>
				<b>Dado</b> que el conductor está autenticado<br/>
				<b>Cuando</b> accede al reporte de alertas<br/>
				<b>Entonces</b> la aplicación muestra una lista de notificaciones previas con fecha y tipo</p>
				<p><strong>Escenario 2: Persistencia de reportes</strong><br/>
				<b>Dado</b> que el conductor cierra sesión o reinstala la aplicación<br/>
				<b>Cuando</b> inicia sesión de nuevo<br/>
				<b>Entonces</b> el reporte de alertas permanece disponible en su cuenta</p>
				<p><strong>Escenario 3: Persistencia temporal de reportes</strong><br/>
				<b>Dado</b> que han pasado 30 días desde la generación de un reporte de alerta<br/>
				<b>Cuando</b> la aplicación ejecuta la limpieza automática<br/>
				<b>Entonces</b> los reportes antiguos se eliminan del almacenamiento local para liberar espacio y mantener la seguridad</p>
				<p><strong>Escenario 4: Información sobre persistencia temporal</strong><br/>
				<b>Dado</b> que el conductor accede por primera vez al reporte de alertas<br/>
				<b>Cuando</b> visualiza la interfaz<br/>
				<b>Entonces</b> se muestra una nota informativa indicando que los reportes se conservan por 30 días por motivos de seguridad y optimización de almacenamiento</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 20-->
		<tr>
			<td>US303</td>
			<td>Configuración de notificaciones</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> definir mis preferencias de notificaciones <b>para</b> recibir solo las alertas relevantes en la aplicación móvil.
			</td>
			<td>
				<p><strong>Escenario 1: Activación selectiva</strong><br/>
				<b>Dado</b> que el conductor gestiona sus preferencias<br/>
				<b>Cuando</b> activa o desactiva un tipo de alerta<br/>
				<b>Entonces</b> el sistema aplica la configuración en adelante</p>
				<p><strong>Escenario 2: Persistencia de configuración</strong><br/>
				<b>Dado</b> que el conductor guarda sus preferencias<br/>
				<b>Cuando</b> inicia sesión desde otro dispositivo<br/>
				<b>Entonces</b> las notificaciones se comportan según lo configurado</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY-->
		<tr>
			<td>US304</td>
			<td>Visualización de diagnóstico del vehículo</td>
			<td>
				<b>Como</b> conductor <b>deseo</b> ver en la aplicación el diagnóstico de mi vehículo <b>para</b> conocer su estado actual y tomar decisiones rápidas.
			</td>
			<td>
				<p><strong>Escenario 1: Diagnóstico disponible</strong><br/>
				<b>Dado</b> que el vehículo está conectado<br/>
				<b>Cuando</b> el conductor abre la vista de diagnóstico<br/>
				<b>Entonces</b> el sistema muestra los indicadores básicos (ej. estado de batería, frenos, llantas)</p>
				<p><strong>Escenario 2: Datos no disponibles</strong><br/>
				<b>Dado</b> que no hay datos de sensores<br/>
				<b>Cuando</b> el conductor consulta el diagnóstico<br/>
				<b>Entonces</b> el sistema informa que no hay datos recientes</p>
			</td>
			<td>E03</td>
		</tr>
		<!--EPIC 04-->
		<tr>
			<td><b>E04</b></td>
			<td>Gestión de mantenimientos (Aplicación Móvil)</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> gestionar mantenimientos desde mi móvil <b>para</b> organizar mis visitas a talleres y llevar control de mis gastos.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 24-->
		<tr>
			<td>US406</td>
			<td>Consulta de historial de mantenimientos</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> ver el historial de mantenimientos en la aplicación <b>para</b> analizar la frecuencia y costos de mis reparaciones.
			</td>
			<td>
				<p><strong>Escenario 1: Visualización correcta</strong><br/>
				<b>Dado</b> que existen registros de mantenimiento<br/>
				<b>Cuando</b> el usuario accede al historial<br/>
				<b>Entonces</b> el sistema muestra una lista con fecha, tipo de servicio y costo</p>
				<p><strong>Escenario 2: Sin registros</strong><br/>
				<b>Dado</b> que no existen mantenimientos previos<br/>
				<b>Cuando</b> el usuario accede al historial<br/>
				<b>Entonces</b> el sistema informa que no hay registros aún</p>
			</td>
			<td>E04</td>
		</tr>
		<!--USER STORY 25-->
		<tr>
			<td>US407</td>
			<td>Recordatorios de mantenimiento</td>
			<td>
				<b>Como</b> conductor, <b>deseo</b> recibir recordatorios de próximos mantenimientos <b>para</b> no olvidar servicios importantes de mi vehículo.
			</td>
			<td>
				<p><strong>Escenario 1: Recordatorio programado</strong><br/>
				<b>Dado</b> que el sistema tiene una fecha estimada de mantenimiento<br/>
				<b>Cuando</b> se cumple el plazo<br/>
				<b>Entonces</b> la aplicación envía un recordatorio al usuario</p>
				<p><strong>Escenario 2: Recordatorio por kilometraje</strong><br/>
				<b>Dado</b> que el sistema registra el kilometraje<br/>
				<b>Cuando</b> se alcanza el límite configurado<br/>
				<b>Entonces</b> la aplicación genera un recordatorio al conductor</p>
			</td>
			<td>E04</td>
		</tr>
		<!--EPIC 05-->
		<tr>
			<td><b>E05</b></td>
			<td>Technical – Backend e Integraciones</td>
			<td>
				<b>Como</b> Developer <b>deseo</b> implementar y asegurar los servicios backend y sus integraciones <b>Para</b> soportar ingestión de datos IoT, autenticación, alertas y trazabilidad del sistema.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY 01-->
		<tr>
			<td>US501</td>
			<td>Ingestión de telemetría IoT</td>
			<td>
				<b>Como</b> Developer <b>deseo</b> exponer un endpoint para recibir telemetría del dispositivo IoT con validación de esquema y persistencia confiable <b>Para</b> disponibilizar datos para diagnóstico y alertas.
			</td>
			<td>
				<p><strong>Escenario 1: Mensaje válido</strong><br/>
				<b>Dado</b> que el servicio recibe un payload con esquema válido<br/>
				<b>Cuando</b> procesa la solicitud<br/>
				<b>Entonces</b> almacena el registro de telemetría y retorna estado de éxito</p>
				<p><strong>Escenario 2: Mensaje inválido</strong><br/>
				<b>Dado</b> que el servicio recibe un payload que no cumple el esquema<br/>
				<b>Cuando</b> valida la solicitud<br/>
				<b>Entonces</b> rechaza el mensaje y retorna estado de error con causa técnica</p>
				<p><strong>Escenario 3: Encolado para alertas</strong><br/>
				<b>Dado</b> que el registro se almacena correctamente<br/>
				<b>Cuando</b> finaliza el procesamiento<br/>
				<b>Entonces</b> el servicio publica un evento en la cola de análisis para el motor de alertas</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 02-->
		<tr>
			<td>US502</td>
			<td>Motor de alertas y reglas</td>
			<td>
				<b>Como</b> Developer <b>deseo</b> implementar un componente que evalúa reglas sobre eventos de telemetría <b>Para</b> generar alertas preventivas y críticas de forma confiable.
			</td>
			<td>
				<p><strong>Escenario 1: Generación de alerta</strong><br/>
				<b>Dado</b> que el motor recibe un evento con umbral superado<br/>
				<b>Cuando</b> evalúa las reglas configuradas<br/>
				<b>Entonces</b> crea una alerta con severidad y causa técnica</p>
				<p><strong>Escenario 2: Idempotencia</strong><br/>
				<b>Dado</b> que el mismo evento se procesa más de una vez<br/>
				<b>Cuando</b> el motor identifica duplicidad<br/>
				<b>Entonces</b> no crea alertas duplicadas y registra la deduplicación</p>
				<p><strong>Escenario 3: Emisión a notificaciones</strong><br/>
				<b>Dado</b> que una alerta queda en estado creado<br/>
				<b>Cuando</b> se publica al canal de notificaciones<br/>
				<b>Entonces</b> el sistema emite el mensaje a la plataforma de mensajería configurada</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 03-->
		<tr>
			<td>US503</td>
			<td>Autenticación JWT y control de acceso</td>
			<td>
				<b>Como</b> Developer <b>deseo</b> proveer autenticación basada en JWT con expiración y roles <b>Para</b> proteger las APIs de web y móvil y aplicar autorización por recursos.
			</td>
			<td>
				<p><strong>Escenario 1: Emisión de token</strong><br/>
				<b>Dado</b> que el servicio valida credenciales correctas<br/>
				<b>Cuando</b> completa la autenticación<br/>
				<b>Entonces</b> emite un token JWT con expiración y claims de rol</p>
				<p><strong>Escenario 2: Acceso autorizado</strong><br/>
				<b>Dado</b> que la solicitud incluye un token válido con rol adecuado<br/>
				<b>Cuando</b> accede a un recurso protegido<br/>
				<b>Entonces</b> el sistema concede el acceso</p>
				<p><strong>Escenario 3: Acceso denegado</strong><br/>
				<b>Dado</b> que la solicitud carece de token o el rol no cumple la política<br/>
				<b>Cuando</b> intenta acceder a un recurso protegido<br/>
				<b>Entonces</b> el sistema deniega el acceso y registra el intento</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 04-->
		<tr>
			<td>US504</td>
			<td>Auditoría y trazabilidad</td>
			<td>
				<b>Como</b> Developer <b>deseo</b> registrar eventos de auditoría con correlación de solicitudes <b>Para</b> disponer de trazabilidad de acciones críticas y facilitar el diagnóstico de incidentes.
			</td>
			<td>
				<p><strong>Escenario 1: Registro de acciones críticas</strong><br/>
				<b>Dado</b> que el sistema ejecuta una acción sensible (alta, edición o eliminación de recursos)<br/>
				<b>Cuando</b> finaliza la operación<br/>
				<b>Entonces</b> registra un evento de auditoría con identificadores de usuario, recurso y resultado</p>
				<p><strong>Escenario 2: Correlation-ID</strong><br/>
				<b>Dado</b> que una solicitud entra al sistema<br/>
				<b>Cuando</b> atraviesa servicios internos<br/>
				<b>Entonces</b> cada servicio propaga un identificador de correlación y registra los eventos con ese identificador</p>
				<p><strong>Escenario 3: Retención y consulta</strong><br/>
				<b>Dado</b> que existen eventos de auditoría almacenados<br/>
				<b>Cuando</b> se solicita una consulta por rango de fechas y tipo de evento<br/>
				<b>Entonces</b> el sistema devuelve los registros correspondientes según la política de retención</p>
			</td>
			<td>E05</td>
		</tr>
    <!--EPIC 06-->
    <tr>
    	<td><b>E06</b></td>
    	<td>Aplicación Web – Gestión de Citas del Taller</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> gestionar la agenda de citas (crear, aprobar, reprogramar, cancelar y dar seguimiento) <b>Para</b> organizar la atención y evitar choques de horario.
    	</td>
    	<td></td>
    	<td></td>
    </tr>
    <!--STORY 01-->
    <tr>
    	<td>US601</td>
    	<td>Ver agenda por día y semana</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> visualizar la agenda en vista diaria y semanal <b>Para</b> organizar el trabajo del equipo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Vista diaria por defecto</strong><br/>
    		<b>Dado</b> que ingreso a “Citas”<br/>
    		<b>Cuando</b> se carga la pantalla<br/>
    		<b>Entonces</b> veo la agenda del día actual</p>
    		<p><strong>Escenario 2: Cambiar a vista semanal</strong><br/>
    		<b>Dado</b> que estoy en la vista de citas<br/>
    		<b>Cuando</b> selecciono “Semana”<br/>
    		<b>Entonces</b> se muestran las citas de la semana en curso</p>
    		<p><strong>Escenario 3: Búsqueda simple</strong><br/>
    		<b>Dado</b> que necesito ubicar una cita<br/>
    		<b>Cuando</b> busco por cliente o placa<br/>
    		<b>Entonces</b> la lista se filtra con los resultados coincidentes</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 02-->
    <tr>
    	<td>US602</td>
    	<td>Crear cita manual</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> registrar una cita con cliente, vehículo, fecha y servicio <b>Para</b> agendar una visita.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Creación válida</strong><br/>
    		<b>Dado</b> que completo los campos obligatorios<br/>
    		<b>Cuando</b> presiono “Guardar”<br/>
    		<b>Entonces</b> la cita se crea en estado “Solicitada”</p>
    		<p><strong>Escenario 2: Validación de obligatorios</strong><br/>
    		<b>Dado</b> que falta un dato requerido<br/>
    		<b>Cuando</b> intento guardar<br/>
    		<b>Entonces</b> el sistema indica qué campo debo completar</p>
    		<p><strong>Escenario 3: Conflicto básico</strong><br/>
    		<b>Dado</b> que ya existe una cita para el mismo vehículo en el mismo horario<br/>
    		<b>Cuando</b> intento guardar<br/>
    		<b>Entonces</b> no se crea y se muestra un aviso de conflicto</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 03-->
    <tr>
    	<td>US603</td>
    	<td>Aprobar cita</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> aprobar una cita solicitada <b>Para</b> confirmarla con el cliente.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Cambio a aprobada</strong><br/>
    		Dado una cita en estado “Solicitada”<br/>
    		<b>Cuando</b> presiono “Aprobar”<br/>
    		<b>Entonces</b> la cita cambia a estado “Aprobada”</p>
    		<p><strong>Escenario 2: Registro de auditoría simple</strong><br/>
    		<b>Dado</b> que apruebo una cita<br/>
    		<b>Cuando</b> se actualiza el estado<br/>
    		<b>Entonces</b> queda registrada la fecha y el usuario que aprobó</p>
    		<p><strong>Escenario 3: Idempotencia básica</strong><br/>
    		<b>Dado</b> que una cita ya está “Aprobada”<br/>
    		<b>Cuando</b> intento volver a aprobarla<br/>
    		<b>Entonces</b> el sistema no realiza cambios y muestra que ya estaba aprobada</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 04-->
    <tr>
    	<td>US604</td>
    	<td>Reprogramar cita</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> reprogramar una cita aprobada <b>Para</b> moverla a una fecha/hora disponible.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Guardado de nuevo horario</strong><br/>
    		Dado una cita “Aprobada”<br/>
    		<b>Cuando</b> selecciono nueva fecha y hora y guardo<br/>
    		<b>Entonces</b> la cita queda con el nuevo horario</p>
    		<p><strong>Escenario 2: Motivo de reprogramación</strong><br/>
				<b>Dado</b> que reprogramo una cita<br/>
				<b>Cuando</b> confirmo el cambio<br/>
				<b>Entonces</b> el sistema solicita un motivo y el usuario ingresa el motivo, que se guarda con la cita</p>
    		<p><strong>Escenario 3: Conflicto de horario</strong><br/>
    		<b>Dado</b> que el nuevo horario coincide con otra cita del mismo vehículo<br/>
    		<b>Cuando</b> intento guardar<br/>
    		<b>Entonces</b> no se permite y se muestra un aviso de conflicto</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 05-->
    <tr>
    	<td>US605</td>
    	<td>Rechazar o cancelar cita</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> rechazar o cancelar citas <b>Para</b> liberar espacios en la agenda.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Rechazo de solicitada</strong><br/>
    		Dado una cita en estado “Solicitada”<br/>
    		<b>Cuando</b> presiono “Rechazar”<br/>
    		<b>Entonces</b> la cita pasa a “Rechazada” y se solicita un motivo</p>
    		<p><strong>Escenario 2: Cancelación de aprobada</strong><br/>
    		Dado una cita en estado “Aprobada”<br/>
    		<b>Cuando</b> presiono “Cancelar”<br/>
    		<b>Entonces</b> la cita pasa a “Cancelada” y queda registrado el motivo</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 06-->
    <tr>
    	<td>US606</td>
    	<td>Check-in de llegada</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> marcar el check-in del vehículo a su llegada <b>Para</b> iniciar la atención a tiempo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Marcar llegada</strong><br/>
    		Dado una cita “Aprobada”<br/>
    		<b>Cuando</b> marco “Llegó al taller”<br/>
    		<b>Entonces</b> la cita cambia a “En recepción” y se registra la hora</p>
    		<p><strong>Escenario 2: No presentado</strong><br/>
    		<b>Dado</b> que el cliente no llega<br/>
    		<b>Cuando</b> pasan 15 minutos después de la hora programada<br/>
    		<b>Entonces</b> la cita se marca como “No presentado”</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 07-->
    <tr>
    	<td>US607</td>
    	<td>Notas internas en la cita</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> agregar notas internas a la cita <b>Para</b> compartir detalles con el equipo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Agregar nota</strong><br/>
    		Dado una cita existente<br/>
    		<b>Cuando</b> agrego una nota y guardo<br/>
    		<b>Entonces</b> se registra la nota con fecha y autor</p>
    		<p><strong>Escenario 2: Ver registro de notas</strong><br/>
    		<b>Dado</b> que otro usuario abre la cita<br/>
    		<b>Cuando</b> accede a “Notas”<br/>
    		<b>Entonces</b> visualiza el registro de notas en orden cronológico</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 08-->
    <tr>
    	<td>US608</td>
    	<td>Filtros por estado y fecha</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> filtrar la lista de citas por estado y rango de fechas <b>Para</b> enfocarme en lo pendiente.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Filtrar por estado</strong><br/>
    		<b>Dado</b> que selecciono un estado (Solicitada, Aprobada, Cancelada, No presentado)<br/>
    		<b>Cuando</b> aplico el filtro<br/>
    		<b>Entonces</b> solo se muestran las citas de ese estado</p>
    		<p><strong>Escenario 2: Filtrar por rango</strong><br/>
    		<b>Dado</b> que elijo un rango de fechas<br/>
    		<b>Cuando</b> aplico el filtro<br/>
    		<b>Entonces</b> se listan únicamente las citas dentro de ese periodo</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 09-->
    <tr>
    	<td>US609</td>
    	<td>Contadores rápidos por estado</td>
    	<td>
    		<b>Como</b> mecánico del taller <b>deseo</b> ver totales del día por estado de cita <b>Para</b> tener una vista rápida de la carga.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Totales del día</strong><br/>
    		Dado la vista de agenda<br/>
    		<b>Cuando</b> se carga la pantalla<br/>
    		<b>Entonces</b> se muestran contadores del día por estado (Solicitadas, Aprobadas, Canceladas, No presentado)</p>
    		<p><strong>Escenario 2: Cambio de fecha</strong><br/>
    		<b>Dado</b> que navego a otra fecha<br/>
    		<b>Cuando</b> la selecciono<br/>
    		<b>Entonces</b> los contadores se recalculan para la nueva fecha</p>
    	</td>
    	<td>E06</td>
    </tr>
		<!--EPIC 07-->
    <tr>
    	<td><b>E07</b></td>
    	<td>Gestión de Vehículos</td>
    	<td>
    		<b>Como</b> conductor <b>deseo</b> registrar y administrar mis vehículos <b>Para</b> asociarlos a diagnósticos y mantenimientos.
    	</td>
    	<td></td>
    	<td></td>
    </tr>
		<!--USER STORY 01-->
		<tr>
			<td>US701</td>
			<td>Registrar vehículo</td>
			<td>
				<b>Como</b> conductor <b>deseo</b> registrar y administrar mis vehículos <b>Para</b> asociarlos a diagnósticos y mantenimientos.
			</td>
			<td>
				<p><strong>Escenario 1: Registro válido</strong><br/>
				<b>Dado</b> que el usuario está autenticado<br/>
				<b>Cuando</b> proporciona datos válidos de un vehículo<br/>
				<b>Entonces</b> el sistema guarda el vehículo y lo muestra en su lista</p>
				<p><strong>Escenario 2: Placa duplicada</strong><br/>
				<b>Dado</b> que ya existe un vehículo con la misma placa<br/>
				<b>Cuando</b> el usuario intenta registrarlo<br/>
				<b>Entonces</b> el sistema rechaza la acción e informa la duplicidad</p>
			</td>
			<td>E07</td>
		</tr>
		<!--USER STORY 02-->
		<tr>
			<td>US702</td>
			<td>Editar y eliminar vehículo</td>
			<td>
				<b>Como</b> conductor <b>deseo</b> editar la información de mis vehículos o eliminarlos <b>Para</b> mantener mi lista actualizada.
			</td>
			<td>
				<p><strong>Escenario 1: Edición válida</strong><br/>
				<b>Dado</b> que el vehículo está registrado
				<b>Cuando</b> el usuario edita datos válidos
				<b>Entonces</b> el sistema actualiza la información
				</p>
				<p><strong>Escenario 2: Eliminación exitosa</strong><br/>
				<b>Dado</b> que el vehículo está registrado
				<b>Cuando</b> el usuario lo elimina
				<b>Entonces</b> desaparece de la lista y se desasocia de futuras citas o diagnósticos
			</td>
			<td>E07</td>
		</tr>
		<!--USER STORY 03-->
		<tr>
			<td>US703</td>
			<td>Listar vehículos</td>
			<td>
				<b>Como</b> conductor <b>deseo</b> ver una lista de mis vehículos registrados <b>Para</b> seleccionar con	 cuál trabajar (diagnósticos, mantenimientos, citas).
			</td>
			<td>
				<p><strong>Escenario 1: Lista disponible</strong><br/>
				<b>Dado</b> que el usuario tiene vehículos registrados
				<b>Cuando</b> accede a la sección “Mis vehículos”
				<b>Entonces</b> el sistema muestra todos sus vehículos con placa, marca y modelo
				</p>
				<p><strong>Escenario 2: Sin vehículos</strong><br/>
				<b>Dado</b> que el usuario no tiene vehículos registrados
				<b>Cuando</b> entra a la sección “Mis vehículos”
				<b>Entonces</b> el sistema muestra un mensaje invitando a registrar el primer vehículo
				</p>
			</td>
			<td>E07</td>
		</tr>
		<!--USER STORY 04-->
		<tr>
			<td>US704</td>
			<td>Asociar IoT device a vehículo</td>
			<td>
				<b>Como</b> conductor <b>deseo</b> vincular el dispositivo IoT a un vehículo específico <b>Para</b> que los diagnósticos y alertas correspondan al auto correcto.
			</td>
			<td>
				<p><strong>Escenario 1: Asociación válida</strong><br/>
				<b>Dado</b> que el usuario tiene un vehículo registrado y un IoT activo
				<b>Cuando</b> introduce el código de dispositivo válido
				<b>Entonces</b> el sistema vincula el IoT a ese vehículo
				</p>
				<p><strong>Escenario 2: Dispositivo ya asociado</strong><br/>
				<b>Dado</b> que un IoT ya está vinculado a otro vehículo
				<b>Cuando</b> el usuario intenta asociarlo de nuevo
				<b>Entonces</b> el sistema rechaza la acción e informa el conflicto
				</p>
			</td>
			<td>E07</td>
		</tr>
    <!--EPIC 08-->
    <tr>
      <td><b>E08</b></td>
      <td>App Móvil – Citas con Taller Asignado</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> solicitar y gestionar citas únicamente con mi taller asignado <b>Para</b> recibir atención sin ver ni elegir otros talleres.
      </td>
      <td></td>
      <td></td>
    </tr>
    <!--STORY 01-->
    <tr>
      <td>US801</td>
      <td>Ver taller asignado y disponibilidad</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> ver mi taller asignado y sus horarios disponibles <b>Para</b> elegir una fecha y hora.
      </td>
      <td>
        <p><strong>Escenario 1: Solo se muestra el taller asignado</strong><br/>
        <b>Dado</b> que ingreso a “Citas”<br/>
        <b>Cuando</b> abro “Mi taller”<br/>
        <b>Entonces</b> veo únicamente el taller asignado (nombre, dirección y teléfono)</p>
        <p><strong>Escenario 2: Ver horarios disponibles</strong><br/>
        <b>Dado</b> que el taller publicó cupos<br/>
        <b>Cuando</b> selecciono una fecha del calendario<br/>
        <b>Entonces</b> se muestran los horarios disponibles de ese día</p>
        <p><strong>Escenario 3: Sin disponibilidad</strong><br/>
        <b>Dado</b> que no hay cupos para la fecha elegida<br/>
        <b>Cuando</b> consulto los horarios<br/>
        <b>Entonces</b> veo el mensaje “Sin horarios disponibles” y la opción de elegir otra fecha</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 02-->
    <tr>
      <td>US802</td>
      <td>Solicitar nueva cita</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> solicitar una cita indicando fecha, hora y tipo de servicio <b>Para</b> agendar la atención en mi taller asignado.
      </td>
      <td>
        <p><strong>Escenario 1: Solicitud válida</strong><br/>
        <b>Dado</b> que elijo un horario disponible y un tipo de servicio<br/>
        <b>Cuando</b> confirmo la solicitud<br/>
        <b>Entonces</b> se crea la cita en estado “Solicitada”</p>
        <p><strong>Escenario 2: Validación de obligatorios</strong><br/>
        <b>Dado</b> que no completo un campo requerido (fecha, hora o servicio)<br/>
        <b>Cuando</b> intento enviar la solicitud<br/>
        <b>Entonces</b> la app indica qué campo debo completar</p>
        <p><strong>Escenario 3: Confirmación en pantalla</strong><br/>
        <b>Dado</b> que la cita fue creada<br/>
        <b>Cuando</b> regreso al listado<br/>
        <b>Entonces</b> veo la nueva cita con estado “Solicitada”</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 03-->
    <tr>
      <td>US803</td>
      <td>Ver estado y detalle de la cita</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> consultar el estado y detalles de mi cita <b>Para</b> mantenerme informado.
      </td>
      <td>
        <p><strong>Escenario 1: Estados visibles</strong><br/>
        <b>Dado</b> que tengo citas creadas<br/>
        <b>Cuando</b> abro “Mis citas”<br/>
        <b>Entonces</b> cada cita muestra su estado (Solicitada, Aprobada, Reprogramada, Cancelada)</p>
        <p><strong>Escenario 2: Ver detalle</strong><br/>
        <b>Dado</b> que selecciono una cita<br/>
        <b>Cuando</b> abro su detalle<br/>
        <b>Entonces</b> veo fecha, hora, servicio y notas</p>
        <p><strong>Escenario 3: Actualización manual</strong><br/>
        <b>Dado</b> que deseo refrescar la información<br/>
        <b>Cuando</b> deslizo para actualizar<br/>
        <b>Entonces</b> se recarga el estado actual desde el servidor</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 04-->
    <tr>
      <td>US804</td>
      <td>Solicitar reprogramación</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> proponer un nuevo horario para mi cita aprobada <b>Para</b> ajustarla a mi disponibilidad.
      </td>
      <td>
        <p><strong>Escenario 1: Enviar solicitud de cambio</strong><br/>
        Dado una cita en estado “Aprobada”<br/>
        <b>Cuando</b> pido reprogramar y elijo un nuevo horario<br/>
        <b>Entonces</b> la cita queda en “Reprogramación solicitada”</p>
        <p><strong>Escenario 2: Confirmación del taller</strong><br/>
        <b>Dado</b> que envié la solicitud<br/>
        <b>Cuando</b> el taller acepta el nuevo horario<br/>
        <b>Entonces</b> la cita vuelve a “Aprobada” con la nueva fecha y hora</p>
        <p><strong>Escenario 3: Horario no disponible</strong><br/>
        <b>Dado</b> que el horario propuesto no está disponible<br/>
        <b>Cuando</b> el taller responde<br/>
        <b>Entonces</b> recibo un aviso y puedo elegir otra opción</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 05-->
    <tr>
      <td>US805</td>
      <td>Cancelar cita</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> poder cancelar una cita <b>Para</b> liberar el horario si no podré asistir.
      </td>
      <td>
        <p><strong>Escenario 1: Cancelación con confirmación</strong><br/>
        Dado una cita activa (Solicitada o Aprobada)<br/>
        <b>Cuando</b> toco “Cancelar” y confirmo<br/>
        <b>Entonces</b> la cita cambia a estado “Cancelada”</p>
        <p><strong>Escenario 2: Motivo opcional</strong><br/>
        <b>Dado</b> que estoy cancelando<br/>
        <b>Cuando</b> aparece el campo de motivo<br/>
        <b>Entonces</b> puedo agregarlo y quedará registrado</p>
        <p><strong>Escenario 3: Aviso informativo</strong><br/>
        <b>Dado</b> que faltan pocas horas para la cita<br/>
        <b>Cuando</b> intento cancelarla<br/>
        <b>Entonces</b> veo un aviso informativo sobre posibles penalidades definidas por el taller</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 06-->
    <tr>
      <td>US806</td>
      <td>Recordatorios de cita</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> recibir recordatorios antes de mi cita <b>Para</b> no olvidarla.
      </td>
      <td>
        <p><strong>Escenario 1: Recordatorio automático</strong><br/>
        Dado una cita en estado “Aprobada”<br/>
        <b>Cuando</b> falte 24h y 1h<br/>
        <b>Entonces</b> recibo un recordatorio en la app (si las notificaciones están activas)</p>
        <p><strong>Escenario 2: Silenciar recordatorios</strong><br/>
        <b>Dado</b> que prefiero no recibir avisos<br/>
        <b>Cuando</b> desactivo los recordatorios en ajustes<br/>
        <b>Entonces</b> la app no envía nuevos recordatorios para futuras citas</p>
      </td>
      <td>E08</td>
    </tr>
    <!--STORY 07-->
    <tr>
      <td>US807</td>
      <td>Adjuntar fotos y notas a la cita</td>
      <td>
        <b>Como</b> conductor <b>deseo</b> adjuntar fotos y una nota al solicitar o editar la cita <b>Para</b> describir el problema del vehículo.
      </td>
      <td>
        <p><strong>Escenario 1: Adjuntar archivos</strong><br/>
        <b>Dado</b> que estoy creando o editando una cita<br/>
        <b>Cuando</b> agrego hasta 3 fotos y una nota<br/>
        <b>Entonces</b> la solicitud se guarda con esos adjuntos</p>
        <p><strong>Escenario 2: Visualizar adjuntos</strong><br/>
        <b>Dado</b> que la cita tiene adjuntos<br/>
        <b>Cuando</b> abro el detalle<br/>
        <b>Entonces</b> puedo ver las fotos y leer la nota enviada</p>
      </td>
      <td>E08</td>
    </tr>
	<tr>
  <td><b>E09</b></td>
  <td>Aplicación Web – Flujo de Trabajo del Servicio</td>
  <td>
    <b>Como</b> mecánico <b>deseo</b> gestionar el ciclo de vida de una orden de servicio,
    desde el diagnóstico hasta la entrega del vehículo
    <b>Para</b> mantener un registro claro del trabajo y notificar al cliente sobre cada etapa.
  </td>
  <td></td>
  <td></td>
</tr>

<tr>
  <td>US901</td>
  <td>Iniciar Orden de Servicio y Diagnóstico</td>
  <td>
    <b>Como</b> mecánico <b>deseo</b> cambiar el estado de una cita a "En Diagnóstico"
    cuando el vehículo ingresa al taller <b>Para</b> iniciar formalmente la orden de servicio.
  </td>
  <td>
    <p><strong>Escenario 1: Iniciar diagnóstico</strong><br/>
    <b>Dado</b> que una cita está en estado "En recepción"<br/>
    <b>Cuando</b> presiono "Iniciar Diagnóstico"<br/>
    <b>Entonces</b> la orden de servicio cambia a "En Diagnóstico" y se registra la hora de inicio</p>
    <p><strong>Escenario 2: Asignar mecánico</strong><br/>
    <b>Dado</b> que se inicia el diagnóstico<br/>
    <b>Cuando</b> el sistema no tiene un mecánico asignado<br/>
    <b>Entonces</b> solicita seleccionar al mecánico responsable del diagnóstico</p>
  </td>
  <td>E09</td>
</tr>

<tr>
  <td>US902</td>
  <td>Registrar Hallazgos y Generar Presupuesto</td>
  <td>
    <b>Como</b> mecánico <b>deseo</b> registrar los hallazgos del diagnóstico y crear un presupuesto detallado
    <b>Para</b> enviarlo a la aprobación del cliente.
  </td>
  <td>
    <p><strong>Escenario 1: Creación de presupuesto</strong><br/>
    <b>Dado</b> que la orden está "En Diagnóstico"<br/>
    <b>Cuando</b> agrego ítems (servicios y repuestos) con sus costos<br/>
    <b>Entonces</b> se genera un presupuesto preliminar asociado a la orden</p>
    <p><strong>Escenario 2: Envío al cliente</strong><br/>
    <b>Dado</b> que el presupuesto está listo<br/>
    <b>Cuando</b> presiono "Enviar a Cliente"<br/>
    <b>Entonces</b> la orden cambia a "Pendiente Aprobación Presupuesto" y el cliente recibe una notificación</p>
    <p><strong>Escenario 3: Presupuesto rechazado</strong><br/>
    <b>Dado</b> que el cliente rechaza el presupuesto<br/>
    <b>Cuando</b> el sistema recibe la notificación<br/>
    <b>Entonces</b> la orden cambia a "Presupuesto Rechazado" y el taller es notificado</p>
  </td>
  <td>E09</td>
</tr>

<tr>
  <td>US903</td>
  <td>Registrar Progreso de Reparación</td>
  <td>
    <b>Como</b> mecánico <b>deseo</b> marcar la orden como "En Reparación" una vez que el presupuesto es aprobado
    <b>Para</b> indicar que el trabajo activo ha comenzado.
  </td>
  <td>
    <p><strong>Escenario 1: Iniciar reparación</strong><br/>
    <b>Dado</b> que una orden está en "Pendiente Aprobación Presupuesto"<br/>
    <b>Cuando</b> el cliente aprueba el presupuesto<br/>
    <b>Entonces</b> la orden cambia automáticamente a "En Reparación"</p>
    <p><strong>Escenario 2: Notificar retraso</strong><br/>
    <b>Dado</b> que la orden está "En Reparación"<br/>
    <b>Cuando</b> surge un imprevisto<br/>
    <b>Entonces</b> puedo enviar una notificación de "Retraso" al cliente con un motivo</p>
  </td>
  <td>E09</td>
</tr>

<tr>
  <td>US904</td>
  <td>Finalizar Servicio y Generar Reporte</td>
  <td>
    <b>Como</b> mecánico <b>deseo</b> finalizar la orden de servicio y generar un reporte técnico
    <b>Para</b> documentar el trabajo realizado y notificar que el vehículo está listo.
  </td>
  <td>
    <p><strong>Escenario 1: Completar reparación</strong><br/>
    <b>Dado</b> que la orden está "En Reparación"<br/>
    <b>Cuando</b> presiono "Finalizar Reparación"<br/>
    <b>Entonces</b> la orden cambia a "Servicio Finalizado / Pendiente de Entrega"</p>
    <p><strong>Escenario 2: Generar reporte técnico</strong><br/>
    <b>Dado</b> que el servicio ha finalizado<br/>
    <b>Cuando</b> completo los campos del reporte (trabajos realizados, recomendaciones)<br/>
    <b>Entonces</b> se genera un documento final que se adjunta al historial digital del vehículo y se notifica al cliente</p>
  </td>
  <td>E09</td>
</tr>

<tr>
  <td><b>E10</b></td>
  <td>App Móvil – Estado y Diagnóstico del Vehículo</td>
  <td>
    <b>Como</b> conductor <b>deseo</b> visualizar en mi app móvil los datos recopilados por el dispositivo IoT
    <b>Para</b> conocer el estado de salud de mi vehículo y mis hábitos de conducción.
  </td>
  <td></td>
  <td></td>
</tr>

<tr>
  <td>US1001</td>
  <td>Dashboard de Estado del Vehículo</td>
  <td>
    <b>Como</b> conductor <b>deseo</b> ver un dashboard principal con los indicadores clave de mi vehículo
    <b>Para</b> tener un resumen rápido de su estado.
  </td>
  <td>
    <p><strong>Escenario 1: Ver indicadores principales</strong><br/>
    <b>Dado</b> que abro la sección de mi vehículo<br/>
    <b>Cuando</b> se carga el dashboard<br/>
    <b>Entonces</b> veo el estado general de la batería, la presión de los neumáticos y el kilometraje actual</p>
    <p><strong>Escenario 2: Datos no actualizados</strong><br/>
    <b>Dado</b> que el dispositivo IoT no ha sincronizado recientemente<br/>
    <b>Cuando</b> veo el dashboard<br/>
    <b>Entonces</b> se muestra la fecha y hora de la última actualización de los datos</p>
  </td>
  <td>E10</td>
</tr>

<tr>
  <td>US1002</td>
  <td>Historial de Alertas y Fallas</td>
  <td>
    <b>Como</b> conductor <b>deseo</b> consultar un historial de todas las alertas y fallas detectadas por el sistema
    <b>Para</b> entender patrones y discutirlo con el mecánico.
  </td>
  <td>
    <p><strong>Escenario 1: Ver lista de alertas</strong><br/>
    <b>Dado</b> que el sistema ha generado alertas<br/>
    <b>Cuando</b> accedo a la sección "Historial de Alertas"<br/>
    <b>Entonces</b> veo una lista cronológica de todas las alertas (ej. "Presión de neumáticos baja",
    "Batería degradada", "Vibración anómala")</p>
    <p><strong>Escenario 2: Ver detalle de una alerta</strong><br/>
    <b>Dado</b> que selecciono una alerta del historial<br/>
    <b>Cuando</b> se abre el detalle<br/>
    <b>Entonces</b> veo la fecha, hora, una descripción del problema y recomendaciones básicas</p>
  </td>
  <td>E10</td>
</tr>

<tr>
  <td>US1003</td>
  <td>Análisis de Hábitos de Conducción</td>
  <td>
    <b>Como</b> conductor <b>deseo</b> ver un reporte sobre mis hábitos de conducción
    <b>Para</b> identificar áreas de mejora y conducir de forma más segura y eficiente.
  </td>
  <td>
    <p><strong>Escenario 1: Resumen de conducción</strong><br/>
    <b>Dado</b> que el dispositivo ha recopilado datos de viaje<br/>
    <b>Cuando</b> accedo a "Mis Hábitos de Conducción"<br/>
    <b>Entonces</b> veo un resumen o puntaje basado en eventos como aceleraciones bruscas, giros bruscos y excesos de velocidad</p>
    <p><strong>Escenario 2: Filtrar por periodo</strong><br/>
    <b>Dado</b> que quiero analizar mi comportamiento<br/>
    <b>Cuando</b> selecciono un periodo de tiempo (ej. última semana, último mes)<br/>
    <b>Entonces</b> los datos y el puntaje se actualizan para reflejar ese periodo</p>
  </td>
  <td>E10</td>
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
			<th># Orden</th>
			<th>User Story Id</th>
			<th>Título</th>
			<th>Descripción</th>
			<th>Story Points (1 / 2 / 3 / 5 / 8)</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>US501</td>
			<td>Ingestión de telemetría IoT</td>
			<td>Como Developer Quiero exponer un endpoint para recibir telemetría del dispositivo IoT con validación de esquema y persistencia confiable Para disponibilizar datos para diagnóstico y alertas.</td>
			<td>5</td>
		</tr>
		<tr>
			<td>2</td>
			<td>US502</td>
			<td>Motor de alertas y reglas</td>
			<td>Como Developer Quiero implementar un componente que evalúa reglas sobre eventos de telemetría Para generar alertas preventivas y críticas de forma confiable.</td>
			<td>8</td>
		</tr>
		<tr>
			<td>3</td>
			<td>US503</td>
			<td>Autenticación JWT y control de acceso</td>
			<td>Como Developer Quiero proveer autenticación basada en JWT con expiración y roles Para proteger las APIs de web y móvil y aplicar autorización por recursos.</td>
			<td>5</td>
		</tr>
		<tr>
			<td>4</td>
			<td>US202</td>
			<td>Registro de cuenta</td>
			<td>Como nuevo usuario Quiero registrarme con mis datos básicos Para crear una cuenta en SafeCar y comenzar a usar el sistema.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>5</td>
			<td>US201</td>
			<td>Iniciar sesión con credenciales</td>
			<td>Como usuario registrado Quiero iniciar sesión con mis credenciales Para acceder a mis datos y funcionalidades.</td>
			<td>2</td>
		</tr>
		<tr>
			<td>6</td>
			<td>US701</td>
			<td>Registrar vehículo</td>
			<td>Como conductor Quiero registrar y administrar mis vehículos Para asociarlos a diagnósticos y mantenimientos.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>7</td>
			<td>US704</td>
			<td>Asociar IoT device a vehículo</td>
			<td>Como conductor Quiero vincular el dispositivo IoT a un vehículo específico Para que los diagnósticos y alertas correspondan al auto correcto.</td>
			<td>2</td>
		</tr>
		<tr>
			<td>8</td>
			<td>US301</td>
			<td>Recepción de alertas en tiempo real</td>
			<td>Como conductor Quiero recibir alertas en el móvil cuando el sistema detecta problemas Para actuar de inmediato y evitar daños mayores.</td>
			<td>5</td>
		</tr>
		<tr>
			<td>9</td>
			<td>US304</td>
			<td>Visualización de diagnóstico del vehículo</td>
			<td>Como conductor Quiero ver en la aplicación un diagnóstico de mi vehículo Para conocer su estado actual y tomar decisiones rápidas.</td>
			<td>5</td>
		</tr>
		<tr>
			<td>10</td>
			<td>US101</td>
			<td>Barra de navegación en landing page por secciones</td>
			<td>Como visitante Quiero desplazarme entre las secciones de la página Para encontrar la información que necesito sin perder tiempo.</td>
			<td>1</td>
		</tr>
		<tr>
			<td>11</td>
			<td>US104</td>
			<td>Visualización de planes y precios</td>
			<td>Como visitante Quiero ver claramente los planes y precios de SafeCar Para evaluar cuál se ajusta mejor a mis necesidades.</td>
			<td>2</td>
		</tr>
		<tr>
			<td>12</td>
			<td>US102</td>
			<td>Acceso visible a la aplicación web</td>
			<td>Como visitante Quiero un acceso visible hacia la aplicación web Para continuar con el uso del servicio cuando lo decida.</td>
			<td>1</td>
		</tr>
		<tr>
			<td>13</td>
			<td>US802</td>
			<td>Solicitar nueva cita</td>
			<td>Como conductor Quiero solicitar una cita indicando fecha, hora y tipo de servicio Para agendar la atención en mi taller asignado.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>14</td>
			<td>US803</td>
			<td>Ver estado y detalle de la cita</td>
			<td>Como conductor Quiero consultar el estado y detalles de mi cita Para mantenerme informado.</td>
			<td>2</td>
		</tr>
		<tr>
			<td>15</td>
			<td>US601</td>
			<td>Ver agenda por día y semana</td>
			<td>Como mecánico del taller Quiero visualizar la agenda en vista diaria y semanal Para organizar el trabajo del equipo.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>16</td>
			<td>US602</td>
			<td>Crear cita manual</td>
			<td>Como mecánico del taller Quiero registrar una cita con cliente, vehículo, fecha y servicio Para agendar una visita.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>17</td>
			<td>US405</td>
			<td>Registro de mantenimientos realizados</td>
			<td>Como conductor Quiero registrar cada mantenimiento realizado Para llevar un historial de intervenciones de mi vehículo.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>18</td>
			<td>US407</td>
			<td>Recordatorios de mantenimiento</td>
			<td>Como conductor Quiero recibir recordatorios de próximos mantenimientos Para no olvidar servicios importantes de mi vehículo.</td>
			<td>2</td>
		</tr>
		<tr>
			<td>19</td>
			<td>US203</td>
			<td>Recuperar contraseña</td>
			<td>Como usuario Quiero restablecer mi contraseña a través de un enlace temporal Para recuperar el acceso cuando lo olvido.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>20</td>
			<td>US204</td>
			<td>Cerrar sesión</td>
			<td>Como usuario autenticado Quiero cerrar sesión de manera segura Para proteger mi cuenta cuando termino de usar el sistema.</td>
			<td>1</td>
		</tr>
	</tbody>
</table>
<!-- FIN: Tabla de User Stories -->
