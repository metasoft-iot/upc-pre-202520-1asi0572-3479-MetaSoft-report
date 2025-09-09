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
				<!--EPIC 02-->
		<tr>
			<td><b>E02</b></td>
			<td>App Web – Autenticación y Cuentas</td>
			<td>
				<b>Como</b> usuario de SafeCar (conductor o taller) <b>Quiero</b> gestionar mi acceso y mis datos básicos de cuenta <b>Para</b> usar de forma segura las funciones web y mantener mi información actualizada.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 12-->
		<tr>
			<td>US201</td>
			<td>Iniciar sesión con credenciales</td>
			<td>
				<b>Como</b> usuario registrado <b>Quiero</b> iniciar sesión con mis credenciales <b>Para</b> acceder a mis datos y funcionalidades.
			</td>
			<td>
				<p><strong>Escenario 1: Credenciales válidas</strong><br/>
				Dado que el usuario tiene una cuenta activa<br/>
				Cuando proporciona credenciales correctas<br/>
				Entonces el sistema le concede acceso a su cuenta.</p>
				<p><strong>Escenario 2: Credenciales inválidas</strong><br/>
				Dado que el usuario intenta autenticarse<br/>
				Cuando las credenciales son incorrectas<br/>
				Entonces el sistema rechaza el acceso e informa el error.</p>
				<p><strong>Escenario 3: Cuenta bloqueada</strong><br/>
				Dado que el usuario tiene la cuenta bloqueada<br/>
				Cuando intenta autenticarse<br/>
				Entonces el sistema deniega el acceso e informa el estado de la cuenta.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 13-->
		<tr>
			<td>US202</td>
			<td>Registro de cuenta</td>
			<td>
				<b>Como</b> nuevo usuario <b>Quiero</b> registrarme con mis datos básicos <b>Para</b> crear una cuenta en SafeCar y comenzar a usar el sistema.
			</td>
			<td>
				<p><strong>Escenario 1: Registro exitoso</strong><br/>
				Dado que el usuario proporciona información válida<br/>
				Cuando envía la solicitud de registro<br/>
				Entonces el sistema crea la cuenta y la deja disponible para autenticación.</p>
				<p><strong>Escenario 2: Datos inválidos</strong><br/>
				Dado que el usuario introduce datos con formato incorrecto o incompleto<br/>
				Cuando solicita el registro<br/>
				Entonces el sistema rechaza la creación e informa el error.</p>
				<p><strong>Escenario 3: Email duplicado</strong><br/>
				Dado que el correo ya existe en el sistema<br/>
				Cuando el usuario intenta registrarse<br/>
				Entonces el sistema rechaza la solicitud e informa que ya está registrado.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 14-->
		<tr>
			<td>US203</td>
			<td>Recuperar contraseña</td>
			<td>
				<b>Como</b> usuario <b>Quiero</b> restablecer mi contraseña a través de un enlace temporal <b>Para</b> recuperar el acceso cuando lo olvido.
			</td>
			<td>
				<p><strong>Escenario 1: Solicitud válida</strong><br/>
				Dado que el usuario indica un correo existente<br/>
				Cuando solicita restablecer su contraseña<br/>
				Entonces el sistema genera un enlace temporal y lo envía al correo registrado.</p>
				<p><strong>Escenario 2: Restablecimiento exitoso</strong><br/>
				Dado que el usuario recibe un enlace vigente<br/>
				Cuando define una nueva contraseña válida<br/>
				Entonces el sistema actualiza la contraseña y habilita el inicio de sesión.</p>
				<p><strong>Escenario 3: Enlace vencido</strong><br/>
				Dado que el usuario intenta usar un enlace expirado<br/>
				Cuando solicita el restablecimiento<br/>
				Entonces el sistema deniega el acceso y ofrece generar uno nuevo.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 15-->
		<tr>
			<td>US204</td>
			<td>Cerrar sesión</td>
			<td>
				<b>Como</b> usuario autenticado <b>Quiero</b> cerrar sesión de manera segura <b>Para</b> proteger mi cuenta cuando termino de usar el sistema.
			</td>
			<td>
				<p><strong>Escenario 1: Cierre manual</strong><br/>
				Dado que el usuario está autenticado<br/>
				Cuando solicita cerrar la sesión<br/>
				Entonces el sistema invalida la sesión y revoca el acceso.</p>
				<p><strong>Escenario 2: Expiración por inactividad</strong><br/>
				Dado que el usuario no interactúa durante el tiempo configurado<br/>
				Cuando intenta acceder a una función protegida<br/>
				Entonces el sistema exige autenticación nuevamente.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 16-->
		<tr>
			<td>US205</td>
			<td>Mantener sesión iniciada</td>
			<td>
				<b>Como</b> usuario frecuente <b>Quiero</b> mantener mi sesión activa en dispositivos de confianza <b>Para</b> evitar inicios repetidos.
			</td>
			<td>
				<p><strong>Escenario 1: Activación</strong><br/>
				Dado que el usuario solicita mantener su sesión iniciada<br/>
				Cuando la autenticación es correcta<br/>
				Entonces el sistema conserva la sesión activa según la política definida.</p>
				<p><strong>Escenario 2: Cierre elimina persistencia</strong><br/>
				Dado que el usuario tiene sesión persistida<br/>
				Cuando solicita cerrar sesión<br/>
				Entonces el sistema invalida cualquier persistencia activa.</p>
				<p><strong>Escenario 3: Sesión en dispositivo no confiable</strong><br/>
				Dado que el usuario no activa la persistencia<br/>
				Cuando finaliza la sesión<br/>
				Entonces el sistema no conserva acceso en ese dispositivo.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 17-->
		<tr>
			<td>US206</td>
			<td>Editar perfil</td>
			<td>
				<b>Como</b> usuario <b>Quiero</b> actualizar mis datos de perfil básicos <b>Para</b> mantener mi información al día en el sistema.
			</td>
			<td>
				<p><strong>Escenario 1: Actualización válida</strong><br/>
				Dado que el usuario está autenticado<br/>
				Cuando modifica datos válidos de su perfil<br/>
				Entonces el sistema guarda los cambios y actualiza la información.</p>
				<p><strong>Escenario 2: Datos inválidos</strong><br/>
				Dado que el usuario introduce información en un formato incorrecto<br/>
				Cuando intenta actualizar el perfil<br/>
				Entonces el sistema rechaza los cambios e informa el error.</p>
				<p><strong>Escenario 3: Datos obligatorios</strong><br/>
				Dado que el usuario elimina información obligatoria<br/>
				Cuando intenta guardar los cambios<br/>
				Entonces el sistema rechaza la acción y solicita completar los campos requeridos.</p>
			</td>
			<td>E02</td>
		</tr>
		<!--USER STORY 18-->
		<tr>
			<td>US207</td>
			<td>Gestionar vehículos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> registrar y administrar mis vehículos <b>Para</b> asociarlos a diagnósticos y mantenimientos.
			</td>
			<td>
				<p><strong>Escenario 1: Registro válido</strong><br/>
				Dado que el usuario está autenticado<br/>
				Cuando proporciona datos válidos de un vehículo<br/>
				Entonces el sistema guarda el vehículo y lo muestra en su lista.</p>
				<p><strong>Escenario 2: Placa duplicada</strong><br/>
				Dado que ya existe un vehículo con la misma placa<br/>
				Cuando el usuario intenta registrarlo<br/>
				Entonces el sistema rechaza la acción e informa la duplicidad.</p>
				<p><strong>Escenario 3: Edición y eliminación</strong><br/>
				Dado que el vehículo ya está registrado<br/>
				Cuando el usuario lo edita o lo elimina<br/>
				Entonces el sistema aplica los cambios y refleja la actualización en la lista.</p>
			</td>
			<td>E02</td>
		</tr>
				<!--EPIC 03-->
		<tr>
			<td><b>E03</b></td>
			<td>App Móvil – Diagnóstico y alertas</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> recibir en mi móvil diagnósticos IoT y alertas preventivas <b>Para</b> anticipar fallas y reducir averías imprevistas.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 19-->
		<tr>
			<td>US301</td>
			<td>Recepción de alertas en tiempo real</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> recibir alertas en el móvil cuando el sistema detecta problemas <b>Para</b> actuar de inmediato y evitar daños mayores.
			</td>
			<td>
				<p><strong>Escenario 1: Alerta por falla detectada</strong><br/>
				Dado que un sensor detecta una anomalía<br/>
				Cuando se envía la alerta<br/>
				Entonces el usuario la recibe en su aplicación móvil en tiempo real.</p>
				<p><strong>Escenario 2: Alerta preventiva</strong><br/>
				Dado que el sistema calcula un desgaste crítico<br/>
				Cuando se cumplen las condiciones<br/>
				Entonces la aplicación envía una notificación preventiva al conductor.</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 20-->
		<tr>
			<td>US302</td>
			<td>Historial de alertas</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> revisar el historial de alertas recibidas <b>Para</b> entender patrones de fallas y planificar mantenimientos.
			</td>
			<td>
				<p><strong>Escenario 1: Consulta de historial</strong><br/>
				Dado que el usuario está autenticado<br/>
				Cuando accede al historial de alertas<br/>
				Entonces el sistema muestra una lista de notificaciones previas con fecha y tipo.</p>
				<p><strong>Escenario 2: Persistencia</strong><br/>
				Dado que el usuario cierra sesión o reinstala la app<br/>
				Cuando inicia sesión de nuevo<br/>
				Entonces el historial de alertas permanece disponible en su cuenta.</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 21-->
		<tr>
			<td>US303</td>
			<td>Configuración de notificaciones</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> definir mis preferencias de notificaciones <b>Para</b> recibir solo las alertas relevantes en mi móvil.
			</td>
			<td>
				<p><strong>Escenario 1: Activación selectiva</strong><br/>
				Dado que el usuario gestiona sus preferencias<br/>
				Cuando activa o desactiva un tipo de alerta<br/>
				Entonces el sistema aplica la configuración en adelante.</p>
				<p><strong>Escenario 2: Persistencia de configuración</strong><br/>
				Dado que el usuario guarda sus preferencias<br/>
				Cuando inicia sesión desde otro dispositivo<br/>
				Entonces las notificaciones se comportan según lo configurado.</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 22-->
		<tr>
			<td>US304</td>
			<td>Visualización de diagnóstico del vehículo</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> ver en la app un diagnóstico básico de mi vehículo <b>Para</b> conocer su estado actual y tomar decisiones rápidas.
			</td>
			<td>
				<p><strong>Escenario 1: Diagnóstico disponible</strong><br/>
				Dado que el vehículo está conectado<br/>
				Cuando el usuario abre la vista de diagnóstico<br/>
				Entonces el sistema muestra los indicadores básicos (ej. estado de batería, frenos, llantas).</p>
				<p><strong>Escenario 2: Datos no disponibles</strong><br/>
				Dado que no hay datos de sensores<br/>
				Cuando el usuario consulta el diagnóstico<br/>
				Entonces el sistema informa que no hay datos recientes.</p>
			</td>
			<td>E03</td>
		</tr>
		<!--EPIC 04-->
		<tr>
			<td><b>E04</b></td>
			<td>App Móvil – Gestión de mantenimientos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> gestionar mantenimientos desde mi móvil <b>Para</b> organizar mis visitas a talleres y llevar control de mis gastos.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 23-->
		<tr>
			<td>US305</td>
			<td>Registro de mantenimientos realizados</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> registrar cada mantenimiento realizado <b>Para</b> llevar un historial de intervenciones de mi vehículo.
			</td>
			<td>
				<p><strong>Escenario 1: Registro exitoso</strong><br/>
				Dado que el usuario introduce datos válidos de un mantenimiento<br/>
				Cuando confirma el registro<br/>
				Entonces el sistema guarda la información en el historial del vehículo.</p>
				<p><strong>Escenario 2: Validación de datos</strong><br/>
				Dado que los datos del mantenimiento son inválidos<br/>
				Cuando el usuario intenta registrarlos<br/>
				Entonces el sistema rechaza la acción e informa el error.</p>
			</td>
			<td>E04</td>
		</tr>
		<!--USER STORY 24-->
		<tr>
			<td>US306</td>
			<td>Consulta de historial de mantenimientos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> ver el historial de mantenimientos en la app <b>Para</b> analizar la frecuencia y costos de mis reparaciones.
			</td>
			<td>
				<p><strong>Escenario 1: Visualización correcta</strong><br/>
				Dado que existen registros de mantenimiento<br/>
				Cuando el usuario accede al historial<br/>
				Entonces el sistema muestra una lista con fecha, tipo de servicio y costo.</p>
				<p><strong>Escenario 2: Sin registros</strong><br/>
				Dado que no existen mantenimientos previos<br/>
				Cuando el usuario accede al historial<br/>
				Entonces el sistema informa que no hay registros aún.</p>
			</td>
			<td>E04</td>
		</tr>
		<!--USER STORY 25-->
		<tr>
			<td>US307</td>
			<td>Recordatorios de mantenimiento</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> recibir recordatorios de próximos mantenimientos <b>Para</b> no olvidar servicios importantes de mi vehículo.
			</td>
			<td>
				<p><strong>Escenario 1: Recordatorio programado</strong><br/>
				Dado que el sistema tiene una fecha estimada de mantenimiento<br/>
				Cuando se cumple el plazo<br/>
				Entonces la aplicación envía un recordatorio al usuario.</p>
				<p><strong>Escenario 2: Recordatorio por kilometraje</strong><br/>
				Dado que el sistema registra el kilometraje<br/>
				Cuando se alcanza el límite configurado<br/>
				Entonces la aplicación genera un recordatorio al conductor.</p>
			</td>
			<td>E04</td>
		</tr>
				<!--EPIC 05-->
		<tr>
			<td><b>E05</b></td>
			<td>Technical – Backend e Integraciones</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar y asegurar los servicios backend y sus integraciones <b>Para</b> soportar ingestión de datos IoT, autenticación, alertas y trazabilidad del sistema.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY 01-->
		<tr>
			<td>US401</td>
			<td>Ingestión de telemetría IoT</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> exponer un endpoint para recibir telemetría del dispositivo IoT con validación de esquema y persistencia confiable <b>Para</b> disponibilizar datos para diagnóstico y alertas.
			</td>
			<td>
				<p><strong>Escenario 1: Mensaje válido</strong><br/>
				Dado que el servicio recibe un payload con esquema válido<br/>
				Cuando procesa la solicitud<br/>
				Entonces almacena el registro de telemetría y retorna estado de éxito.</p>
				<p><strong>Escenario 2: Mensaje inválido</strong><br/>
				Dado que el servicio recibe un payload que no cumple el esquema<br/>
				Cuando valida la solicitud<br/>
				Entonces rechaza el mensaje y retorna estado de error con causa técnica.</p>
				<p><strong>Escenario 3: Encolado para alertas</strong><br/>
				Dado que el registro se almacena correctamente<br/>
				Cuando finaliza el procesamiento<br/>
				Entonces el servicio publica un evento en la cola de análisis para el motor de alertas.</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 02-->
		<tr>
			<td>US402</td>
			<td>Motor de alertas y reglas</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar un componente que evalúa reglas sobre eventos de telemetría <b>Para</b> generar alertas preventivas y críticas de forma confiable.
			</td>
			<td>
				<p><strong>Escenario 1: Generación de alerta</strong><br/>
				Dado que el motor recibe un evento con umbral superado<br/>
				Cuando evalúa las reglas configuradas<br/>
				Entonces crea una alerta con severidad y causa técnica.</p>
				<p><strong>Escenario 2: Idempotencia</strong><br/>
				Dado que el mismo evento se procesa más de una vez<br/>
				Cuando el motor identifica duplicidad<br/>
				Entonces no crea alertas duplicadas y registra la deduplicación.</p>
				<p><strong>Escenario 3: Emisión a notificaciones</strong><br/>
				Dado que una alerta queda en estado creado<br/>
				Cuando se publica al canal de notificaciones<br/>
				Entonces el sistema emite el mensaje a la plataforma de mensajería configurada.</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 03-->
		<tr>
			<td>US403</td>
			<td>Autenticación JWT y control de acceso</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> proveer autenticación basada en JWT con expiración y roles <b>Para</b> proteger las APIs de web y móvil y aplicar autorización por recursos.
			</td>
			<td>
				<p><strong>Escenario 1: Emisión de token</strong><br/>
				Dado que el servicio valida credenciales correctas<br/>
				Cuando completa la autenticación<br/>
				Entonces emite un token JWT con expiración y claims de rol.</p>
				<p><strong>Escenario 2: Acceso autorizado</strong><br/>
				Dado que la solicitud incluye un token válido con rol adecuado<br/>
				Cuando accede a un recurso protegido<br/>
				Entonces el sistema concede el acceso.</p>
				<p><strong>Escenario 3: Acceso denegado</strong><br/>
				Dado que la solicitud carece de token o el rol no cumple la política<br/>
				Cuando intenta acceder a un recurso protegido<br/>
				Entonces el sistema deniega el acceso y registra el intento.</p>
			</td>
			<td>E05</td>
		</tr>
		<!--TECHNICAL STORY 04-->
		<tr>
			<td>US404</td>
			<td>Auditoría y trazabilidad</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> registrar eventos de auditoría con correlación de solicitudes <b>Para</b> disponer de trazabilidad de acciones críticas y facilitar el diagnóstico de incidentes.
			</td>
			<td>
				<p><strong>Escenario 1: Registro de acciones críticas</strong><br/>
				Dado que el sistema ejecuta una acción sensible (alta, edición o eliminación de recursos)<br/>
				Cuando finaliza la operación<br/>
				Entonces registra un evento de auditoría con identificadores de usuario, recurso y resultado.</p>
				<p><strong>Escenario 2: Correlation-ID</strong><br/>
				Dado que una solicitud entra al sistema<br/>
				Cuando atraviesa servicios internos<br/>
				Entonces cada servicio propaga un identificador de correlación y registra los eventos con ese identificador.</p>
				<p><strong>Escenario 3: Retención y consulta</strong><br/>
				Dado que existen eventos de auditoría almacenados<br/>
				Cuando se solicita una consulta por rango de fechas y tipo de evento<br/>
				Entonces el sistema devuelve los registros correspondientes según la política de retención.</p>
			</td>
			<td>E05</td>
		</tr>
        		<!--EPIC 06-->
    <tr>
    	<td><b>E06</b></td>
    	<td>App Web – Gestión de Citas del Taller</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> gestionar la agenda de citas (crear, aprobar, reprogramar, cancelar y dar seguimiento) <b>Para</b> organizar la atención y evitar choques de horario.
    	</td>
    	<td></td>
    	<td></td>
    </tr>
    <!--STORY 01-->
    <tr>
    	<td>US601</td>
    	<td>Ver agenda por día y semana</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> visualizar la agenda en vista diaria y semanal <b>Para</b> organizar el trabajo del equipo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Vista diaria por defecto</strong><br/>
    		Dado que ingreso a “Citas”<br/>
    		Cuando se carga la pantalla<br/>
    		Entonces veo la agenda del día actual.</p>
    		<p><strong>Escenario 2: Cambiar a vista semanal</strong><br/>
    		Dado que estoy en la vista de citas<br/>
    		Cuando selecciono “Semana”<br/>
    		Entonces se muestran las citas de la semana en curso.</p>
    		<p><strong>Escenario 3: Búsqueda simple</strong><br/>
    		Dado que necesito ubicar una cita<br/>
    		Cuando busco por cliente o placa<br/>
    		Entonces la lista se filtra con los resultados coincidentes.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 02-->
    <tr>
    	<td>US602</td>
    	<td>Crear cita manual</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> registrar una cita con cliente, vehículo, fecha y servicio <b>Para</b> agendar una visita.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Creación válida</strong><br/>
    		Dado que completo los campos obligatorios<br/>
    		Cuando presiono “Guardar”<br/>
    		Entonces la cita se crea en estado “Solicitada”.</p>
    		<p><strong>Escenario 2: Validación de obligatorios</strong><br/>
    		Dado que falta un dato requerido<br/>
    		Cuando intento guardar<br/>
    		Entonces el sistema indica qué campo debo completar.</p>
    		<p><strong>Escenario 3: Conflicto básico</strong><br/>
    		Dado que ya existe una cita para el mismo vehículo en el mismo horario<br/>
    		Cuando intento guardar<br/>
    		Entonces no se crea y se muestra un aviso de conflicto.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 03-->
    <tr>
    	<td>US603</td>
    	<td>Aprobar cita</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> aprobar una cita solicitada <b>Para</b> confirmarla con el cliente.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Cambio a aprobada</strong><br/>
    		Dado una cita en estado “Solicitada”<br/>
    		Cuando presiono “Aprobar”<br/>
    		Entonces la cita cambia a estado “Aprobada”.</p>
    		<p><strong>Escenario 2: Registro de auditoría simple</strong><br/>
    		Dado que apruebo una cita<br/>
    		Cuando se actualiza el estado<br/>
    		Entonces queda registrada la fecha y el usuario que aprobó.</p>
    		<p><strong>Escenario 3: Idempotencia básica</strong><br/>
    		Dado que una cita ya está “Aprobada”<br/>
    		Cuando intento volver a aprobarla<br/>
    		Entonces el sistema no realiza cambios y muestra que ya estaba aprobada.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 04-->
    <tr>
    	<td>US604</td>
    	<td>Reprogramar cita</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> reprogramar una cita aprobada <b>Para</b> moverla a una fecha/hora disponible.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Guardado de nuevo horario</strong><br/>
    		Dado una cita “Aprobada”<br/>
    		Cuando selecciono nueva fecha y hora y guardo<br/>
    		Entonces la cita queda con el nuevo horario.</p>
    		<p><strong>Escenario 2: Motivo de reprogramación</strong><br/>
    		Dado que reprogramo una cita<br/>
    		Cuando confirmo el cambio<br/>
    		Entonces debo ingresar un motivo que se guarda con la cita.</p>
    		<p><strong>Escenario 3: Conflicto de horario</strong><br/>
    		Dado que el nuevo horario coincide con otra cita del mismo vehículo<br/>
    		Cuando intento guardar<br/>
    		Entonces no se permite y se muestra un aviso de conflicto.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 05-->
    <tr>
    	<td>US605</td>
    	<td>Rechazar o cancelar cita</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> rechazar o cancelar citas <b>Para</b> liberar espacios en la agenda.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Rechazo de solicitada</strong><br/>
    		Dado una cita en estado “Solicitada”<br/>
    		Cuando presiono “Rechazar”<br/>
    		Entonces la cita pasa a “Rechazada” y se solicita un motivo.</p>
    		<p><strong>Escenario 2: Cancelación de aprobada</strong><br/>
    		Dado una cita en estado “Aprobada”<br/>
    		Cuando presiono “Cancelar”<br/>
    		Entonces la cita pasa a “Cancelada” y queda registrado el motivo.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 06-->
    <tr>
    	<td>US606</td>
    	<td>Check-in de llegada</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> marcar el check-in del vehículo a su llegada <b>Para</b> iniciar la atención a tiempo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Marcar llegada</strong><br/>
    		Dado una cita “Aprobada”<br/>
    		Cuando marco “Llegó al taller”<br/>
    		Entonces la cita cambia a “En recepción” y se registra la hora.</p>
    		<p><strong>Escenario 2: No presentado</strong><br/>
    		Dado que el cliente no llega<br/>
    		Cuando pasan 15 minutos después de la hora programada<br/>
    		Entonces la cita se marca como “No presentado”.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 07-->
    <tr>
    	<td>US607</td>
    	<td>Notas internas en la cita</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> agregar notas internas a la cita <b>Para</b> compartir detalles con el equipo.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Agregar nota</strong><br/>
    		Dado una cita existente<br/>
    		Cuando agrego una nota y guardo<br/>
    		Entonces se registra la nota con fecha y autor.</p>
    		<p><strong>Escenario 2: Ver historial de notas</strong><br/>
    		Dado que otro usuario abre la cita<br/>
    		Cuando accede a “Notas”<br/>
    		Entonces visualiza el historial de notas en orden cronológico.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 08-->
    <tr>
    	<td>US608</td>
    	<td>Filtros por estado y fecha</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> filtrar la lista de citas por estado y rango de fechas <b>Para</b> enfocarme en lo pendiente.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Filtrar por estado</strong><br/>
    		Dado que selecciono un estado (Solicitada, Aprobada, Cancelada, No presentado)<br/>
    		Cuando aplico el filtro<br/>
    		Entonces solo se muestran las citas de ese estado.</p>
    		<p><strong>Escenario 2: Filtrar por rango</strong><br/>
    		Dado que elijo un rango de fechas<br/>
    		Cuando aplico el filtro<br/>
    		Entonces se listan únicamente las citas dentro de ese periodo.</p>
    	</td>
    	<td>E06</td>
    </tr>
    <!--STORY 09-->
    <tr>
    	<td>US609</td>
    	<td>Contadores rápidos por estado</td>
    	<td>
    		<b>Como</b> taller <b>Quiero</b> ver totales del día por estado de cita <b>Para</b> tener una vista rápida de la carga.
    	</td>
    	<td>
    		<p><strong>Escenario 1: Totales del día</strong><br/>
    		Dado la vista de agenda<br/>
    		Cuando se carga la pantalla<br/>
    		Entonces se muestran contadores del día por estado (Solicitadas, Aprobadas, Canceladas, No presentado).</p>
    		<p><strong>Escenario 2: Cambio de fecha</strong><br/>
    		Dado que navego a otra fecha<br/>
    		Cuando la selecciono<br/>
    		Entonces los contadores se recalculan para la nueva fecha.</p>
    	</td>
    	<td>E06</td>
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
