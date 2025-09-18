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
				<b>Como</b> visitante <b>Quiero</b> desplazarme entre las secciones de la página <b>Para</b> encontrar la información que necesito sin perder tiempo.
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
				<b>Como</b> visitante <b>Quiero</b> un acceso visible hacia la aplicación web <b>Para</b> continuar con el uso del servicio cuando lo decida.
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
				<b>Como</b> visitante <b>Quiero</b> cambiar el idioma de la página entre español e inglés <b>Para</b> leer la información en el idioma que requiera.
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
				<p><strong>Escenario 4: CTA visible por plan</strong><br/>
				Dado que el visitante revisa la sección de planes<br/>
				Cuando observa cada tarjeta de plan<br/>
				Entonces cada plan muestra un botón claro de “Empezar” o “Más detalles”.
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
				<b>Como</b> visitante <b>Quiero</b> que la página se vea bien desde cualquier dispositivo <b>Para</b> acceder cómodamente desde cualquier lugar.
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
				Rendimiento optimo y facil navegación 
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
			<td>Aplicación Web – Autenticación y Cuentas</td>
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
				<b>Como</b> usuario <b>Quiero</b> modificar mis datos de perfil básicos <b>Para</b> mantener mi información al día en el sistema.
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
		<!--EPIC 03-->
		<tr>
			<td><b>E03</b></td>
			<td>Aplicación Móvil – Diagnóstico y alertas</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> recibir en mi móvil diagnósticos IoT y alertas preventivas <b>Para</b> anticipar fallas y reducir averías imprevistas.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY 18-->
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
		<!--USER STORY 19-->
		<tr>
			<td>US302</td>
			<td>Reporte de alertas</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> revisar el reporte de alertas recibidas <b>Para</b> entender patrones de fallas y planificar mantenimientos.
			</td>
			<td>
				<p><strong>Escenario 1: Consulta de historial</strong><br/>
				Dado que el usuario está autenticado<br/>
				Cuando accede al historial de alertas<br/>
				Entonces el sistema muestra una lista de notificaciones previas con fecha y tipo.</p>
				<p><strong>Escenario 2: Persistencia</strong><br/>
				Dado que el usuario cierra sesión o reinstala la aplicación<br/>
				Cuando inicia sesión de nuevo<br/>
				Entonces el historial de alertas permanece disponible en su cuenta.</p>
			</td>
			<td>E03</td>
		</tr>
		<!--USER STORY 20-->
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
		<!--USER STORY-->
		<tr>
			<td>US304</td>
			<td>Visualización de diagnóstico del vehículo</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> ver en la aplicación un diagnóstico  de mi vehículo <b>Para</b> conocer su estado actual y tomar decisiones rápidas.
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
			<td>Aplicación Móvil – Gestión de mantenimientos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> gestionar mantenimientos desde mi móvil <b>Para</b> organizar mis visitas a talleres y llevar control de mis gastos.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY-->
		<tr>
			<td>US405</td>
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
			<td>US406</td>
			<td>Consulta de historial de mantenimientos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> ver el historial de mantenimientos en la aplicación <b>Para</b> analizar la frecuencia y costos de mis reparaciones.
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
			<td>US407</td>
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
			<td>US501</td>
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
			<td>US502</td>
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
			<td>US503</td>
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
			<td>US504</td>
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
			<td>Aplicación Web – Gestión de Citas del Taller</td>
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
					Entonces el sistema solicita un motivo y el usuario ingresa el motivo, que se guarda con la cita.</p>
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
			<!--EPIC 07-->
		<tr>
			<td><b>E07</b></td>
			<td>Gestión de Vehículos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> que SafeCar me permita organizar y mantener actualizada la información de mis vehículos registrados <b>Para</b> simplificar el seguimiento de su estado, los servicios realizados y los mantenimientos pendientes.
			</td>
			<td></td>
			<td></td>
		</tr>
			<!--USER STORY 01-->
			<tr>
				<td>US701</td>
				<td>Registrar vehículo</td>
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
				</td>
				<td>E07</td>
			</tr>
			<!--USER STORY 02-->
			<tr>
				<td>US702</td>
				<td>Editar y eliminar vehículo</td>
				<td>
					<b>Como</b> conductor <b>Quiero</b> editar la información de mis vehículos o eliminarlos <b>Para</b> mantener mi lista actualizada.
				</td>
				<td>
					<p><strong>Escenario 1: Edición válida</strong><br/>
					Dado que el vehículo está registrado
					Cuando el usuario edita datos válidos
					Entonces el sistema actualiza la información.
					</p>
					<p><strong>Escenario 2: Eliminación exitosa</strong><br/>
					Dado que el vehículo está registrado
					Cuando el usuario lo elimina
					Entonces desaparece de la lista y se desasocia de futuras citas o diagnósticos.
				</td>
				<td>E07</td>
			</tr>
			<!--USER STORY 03-->
			<tr>
				<td>US703</td>
				<td>Listar vehículos</td>
				<td>
					<b>Como</b> conductor <b>Quiero</b> ver una lista de mis vehículos registrados <b>Para</b> seleccionar con	 cuál trabajar (diagnósticos, mantenimientos, citas).
				</td>
				<td>
					<p><strong>Escenario 1: Lista disponible</strong><br/>
					Dado que el usuario tiene vehículos registrados
					Cuando accede a la sección “Mis vehículos”
					Entonces el sistema muestra todos sus vehículos con placa, marca y modelo.
					</p>
					<p><strong>Escenario 2: Sin vehículos</strong><br/>
					Dado que el usuario no tiene vehículos registrados
					Cuando entra a la sección “Mis vehículos”
					Entonces el sistema muestra un mensaje invitando a registrar el primer vehículo.
					</p>
				</td>
				<td>E07</td>
			</tr>
			<!--USER STORY 04-->
			<tr>
				<td>US704</td>
				<td>Asociar IoT device a vehículo</td>
				<td>
					<b>Como</b> conductor <b>Quiero</b> vincular el dispositivo IoT a un vehículo específico <b>Para</b> que los diagnósticos y alertas correspondan al auto correcto.
				</td>
				<td>
					<p><strong>Escenario 1: Asociación válida</strong><br/>
					Dado que el usuario tiene un vehículo registrado y un IoT activo
					Cuando introduce el código de dispositivo válido
					Entonces el sistema vincula el IoT a ese vehículo.
					</p>
					<p><strong>Escenario 2: Dispositivo ya asociado</strong><br/>
					Dado que un IoT ya está vinculado a otro vehículo
					Cuando el usuario intenta asociarlo de nuevo
					Entonces el sistema rechaza la acción e informa el conflicto.
					</p>
				</td>
				<td>E07</td>
			</tr>
		<!--EPIC 08-->
		<tr>
		<td><b>E08</b></td>
		<td>App Móvil – Citas con Taller Asignado</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> solicitar y gestionar citas únicamente con mi taller asignado <b>Para</b> recibir atención sin ver ni elegir otros talleres.
		</td>
		<td></td>
		<td></td>
		</tr>
		<!--STORY 01-->
		<tr>
		<td>US801</td>
		<td>Ver taller asignado y disponibilidad</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> ver mi taller asignado y sus horarios disponibles <b>Para</b> elegir una fecha y hora.
		</td>
		<td>
			<p><strong>Escenario 1: Solo se muestra el taller asignado</strong><br/>
			Dado que ingreso a “Citas”<br/>
			Cuando abro “Mi taller”<br/>
			Entonces veo únicamente el taller asignado (nombre, dirección y teléfono).</p>
			<p><strong>Escenario 2: Ver horarios disponibles</strong><br/>
			Dado que el taller publicó cupos<br/>
			Cuando selecciono una fecha del calendario<br/>
			Entonces se muestran los horarios disponibles de ese día.</p>
			<p><strong>Escenario 3: Sin disponibilidad</strong><br/>
			Dado que no hay cupos para la fecha elegida<br/>
			Cuando consulto los horarios<br/>
			Entonces veo el mensaje “Sin horarios disponibles” y la opción de elegir otra fecha.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 02-->
		<tr>
		<td>US802</td>
		<td>Solicitar nueva cita</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> solicitar una cita indicando fecha, hora y tipo de servicio <b>Para</b> agendar la atención en mi taller asignado.
		</td>
		<td>
			<p><strong>Escenario 1: Solicitud válida</strong><br/>
			Dado que elijo un horario disponible y un tipo de servicio<br/>
			Cuando confirmo la solicitud<br/>
			Entonces se crea la cita en estado “Solicitada”.</p>
			<p><strong>Escenario 2: Validación de obligatorios</strong><br/>
			Dado que no completo un campo requerido (fecha, hora o servicio)<br/>
			Cuando intento enviar la solicitud<br/>
			Entonces la app indica qué campo debo completar.</p>
			<p><strong>Escenario 3: Confirmación en pantalla</strong><br/>
			Dado que la cita fue creada<br/>
			Cuando regreso al listado<br/>
			Entonces veo la nueva cita con estado “Solicitada”.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 03-->
		<tr>
		<td>US803</td>
		<td>Ver estado y detalle de la cita</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> consultar el estado y detalles de mi cita <b>Para</b> mantenerme informado.
		</td>
		<td>
			<p><strong>Escenario 1: Estados visibles</strong><br/>
			Dado que tengo citas creadas<br/>
			Cuando abro “Mis citas”<br/>
			Entonces cada cita muestra su estado (Solicitada, Aprobada, Reprogramada, Cancelada).</p>
			<p><strong>Escenario 2: Ver detalle</strong><br/>
			Dado que selecciono una cita<br/>
			Cuando abro su detalle<br/>
			Entonces veo fecha, hora, servicio y notas.</p>
			<p><strong>Escenario 3: Actualización manual</strong><br/>
			Dado que deseo refrescar la información<br/>
			Cuando deslizo para actualizar<br/>
			Entonces se recarga el estado actual desde el servidor.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 04-->
		<tr>
		<td>US804</td>
		<td>Solicitar reprogramación</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> proponer un nuevo horario para mi cita aprobada <b>Para</b> ajustarla a mi disponibilidad.
		</td>
		<td>
			<p><strong>Escenario 1: Enviar solicitud de cambio</strong><br/>
			Dado una cita en estado “Aprobada”<br/>
			Cuando pido reprogramar y elijo un nuevo horario<br/>
			Entonces la cita queda en “Reprogramación solicitada”.</p>
			<p><strong>Escenario 2: Confirmación del taller</strong><br/>
			Dado que envié la solicitud<br/>
			Cuando el taller acepta el nuevo horario<br/>
			Entonces la cita vuelve a “Aprobada” con la nueva fecha y hora.</p>
			<p><strong>Escenario 3: Horario no disponible</strong><br/>
			Dado que el horario propuesto no está disponible<br/>
			Cuando el taller responde<br/>
			Entonces recibo un aviso y puedo elegir otra opción.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 05-->
		<tr>
		<td>US805</td>
		<td>Cancelar cita</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> poder cancelar una cita <b>Para</b> liberar el horario si no podré asistir.
		</td>
		<td>
			<p><strong>Escenario 1: Cancelación con confirmación</strong><br/>
			Dado una cita activa (Solicitada o Aprobada)<br/>
			Cuando toco “Cancelar” y confirmo<br/>
			Entonces la cita cambia a estado “Cancelada”.</p>
			<p><strong>Escenario 2: Motivo opcional</strong><br/>
			Dado que estoy cancelando<br/>
			Cuando aparece el campo de motivo<br/>
			Entonces puedo agregarlo y quedará registrado.</p>
			<p><strong>Escenario 3: Aviso informativo</strong><br/>
			Dado que faltan pocas horas para la cita<br/>
			Cuando intento cancelarla<br/>
			Entonces veo un aviso informativo sobre posibles penalidades definidas por el taller.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 06-->
		<tr>
		<td>US806</td>
		<td>Recordatorios de cita</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> recibir recordatorios antes de mi cita <b>Para</b> no olvidarla.
		</td>
		<td>
			<p><strong>Escenario 1: Recordatorio automático</strong><br/>
			Dado una cita en estado “Aprobada”<br/>
			Cuando falte 24h y 1h<br/>
			Entonces recibo un recordatorio en la app (si las notificaciones están activas).</p>
			<p><strong>Escenario 2: Silenciar recordatorios</strong><br/>
			Dado que prefiero no recibir avisos<br/>
			Cuando desactivo los recordatorios en ajustes<br/>
			Entonces la app no envía nuevos recordatorios para futuras citas.</p>
		</td>
		<td>E08</td>
		</tr>
		<!--STORY 07-->
		<tr>
		<td>US807</td>
		<td>Adjuntar fotos y notas a la cita</td>
		<td>
			<b>Como</b> conductor <b>Quiero</b> adjuntar fotos y una nota al solicitar o editar la cita <b>Para</b> describir el problema del vehículo.
		</td>
		<td>
			<p><strong>Escenario 1: Adjuntar archivos</strong><br/>
			Dado que estoy creando o editando una cita<br/>
			Cuando agrego hasta 3 fotos y una nota<br/>
			Entonces la solicitud se guarda con esos adjuntos.</p>
			<p><strong>Escenario 2: Visualizar adjuntos</strong><br/>
			Dado que la cita tiene adjuntos<br/>
			Cuando abro el detalle<br/>
			Entonces puedo ver las fotos y leer la nota enviada.</p>
		</td>
		<td>E08</td>
		</tr>
		<tr>
	<td><b>E09</b></td>
	<td>Aplicación Web – Flujo de Trabajo del Servicio</td>
	<td>
		<b>Como</b> mecánico <b>Quiero</b> gestionar el ciclo de vida de una orden de servicio, 
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
		<b>Como</b> mecánico <b>Quiero</b> cambiar el estado de una cita a "En Diagnóstico" 
		cuando el vehículo ingresa al taller <b>Para</b> iniciar formalmente la orden de servicio.
	</td>
	<td>
		<p><strong>Escenario 1: Iniciar diagnóstico</strong><br/>
		Dado que una cita está en estado "En recepción"<br/>
		Cuando presiono "Iniciar Diagnóstico"<br/>
		Entonces la orden de servicio cambia a "En Diagnóstico" y se registra la hora de inicio.</p>
		<p><strong>Escenario 2: Asignar mecánico</strong><br/>
		Dado que se inicia el diagnóstico<br/>
		Cuando el sistema no tiene un mecánico asignado<br/>
		Entonces solicita seleccionar al mecánico responsable del diagnóstico.</p>
	</td>
	<td>E09</td>
	</tr>
	<tr>
	<td>US902</td>
	<td>Registrar Hallazgos y Generar Presupuesto</td>
	<td>
		<b>Como</b> mecánico <b>Quiero</b> registrar los hallazgos del diagnóstico y crear un presupuesto detallado 
		<b>Para</b> enviarlo a la aprobación del cliente.
	</td>
	<td>
		<p><strong>Escenario 1: Creación de presupuesto</strong><br/>
		Dado que la orden está "En Diagnóstico"<br/>
		Cuando agrego ítems (servicios y repuestos) con sus costos<br/>
		Entonces se genera un presupuesto preliminar asociado a la orden.</p>
		<p><strong>Escenario 2: Envío al cliente</strong><br/>
		Dado que el presupuesto está listo<br/>
		Cuando presiono "Enviar a Cliente"<br/>
		Entonces la orden cambia a "Pendiente Aprobación Presupuesto" y el cliente recibe una notificación.</p>
		<p><strong>Escenario 3: Presupuesto rechazado</strong><br/>
		Dado que el cliente rechaza el presupuesto<br/>
		Cuando el sistema recibe la notificación<br/>
		Entonces la orden cambia a "Presupuesto Rechazado" y el taller es notificado.</p>
	</td>
	<td>E09</td>
	</tr>
	<tr>
	<td>US903</td>
	<td>Registrar Progreso de Reparación</td>
	<td>
		<b>Como</b> mecánico <b>Quiero</b> marcar la orden como "En Reparación" una vez que el presupuesto es aprobado 
		<b>Para</b> indicar que el trabajo activo ha comenzado.
	</td>
	<td>
		<p><strong>Escenario 1: Iniciar reparación</strong><br/>
		Dado que una orden está en "Pendiente Aprobación Presupuesto"<br/>
		Cuando el cliente aprueba el presupuesto<br/>
		Entonces la orden cambia automáticamente a "En Reparación".</p>
		<p><strong>Escenario 2: Notificar retraso</strong><br/>
		Dado que la orden está "En Reparación"<br/>
		Cuando surge un imprevisto<br/>
		Entonces puedo enviar una notificación de "Retraso" al cliente con un motivo.</p>
	</td>
	<td>E09</td>
	</tr>
	<tr>
	<td>US904</td>
	<td>Finalizar Servicio y Generar Reporte</td>
	<td>
		<b>Como</b> mecánico <b>Quiero</b> finalizar la orden de servicio y generar un reporte técnico 
		<b>Para</b> documentar el trabajo realizado y notificar que el vehículo está listo.
	</td>
	<td>
		<p><strong>Escenario 1: Completar reparación</strong><br/>
		Dado que la orden está "En Reparación"<br/>
		Cuando presiono "Finalizar Reparación"<br/>
		Entonces la orden cambia a "Servicio Finalizado / Pendiente de Entrega".</p>
		<p><strong>Escenario 2: Generar reporte técnico</strong><br/>
		Dado que el servicio ha finalizado<br/>
		Cuando completo los campos del reporte (trabajos realizados, recomendaciones)<br/>
		Entonces se genera un documento final que se adjunta al historial digital del vehículo y se notifica al cliente.</p>
	</td>
	<td>E09</td>
	</tr>
	<tr>
	<td><b>E10</b></td>
	<td>App Móvil – Estado y Diagnóstico del Vehículo</td>
	<td>
		<b>Como</b> conductor <b>Quiero</b> visualizar en mi app móvil los datos recopilados por el dispositivo IoT 
		<b>Para</b> conocer el estado de salud de mi vehículo y mis hábitos de conducción.
	</td>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td>US1001</td>
	<td>Dashboard de Estado del Vehículo</td>
	<td>
		<b>Como</b> conductor <b>Quiero</b> ver un dashboard principal con los indicadores clave de mi vehículo 
		<b>Para</b> tener un resumen rápido de su estado.
	</td>
	<td>
		<p><strong>Escenario 1: Ver indicadores principales</strong><br/>
		Dado que abro la sección de mi vehículo<br/>
		Cuando se carga el dashboard<br/>
		Entonces veo el estado general de la batería, la presión de los neumáticos y el kilometraje actual.</p>
		<p><strong>Escenario 2: Datos no actualizados</strong><br/>
		Dado que el dispositivo IoT no ha sincronizado recientemente<br/>
		Cuando veo el dashboard<br/>
		Entonces se muestra la fecha y hora de la última actualización de los datos.</p>
	</td>
	<td>E10</td>
	</tr>
	<tr>
	<td>US1002</td>
	<td>Historial de Alertas y Fallas</td>
	<td>
		<b>Como</b> conductor <b>Quiero</b> consultar un historial de todas las alertas y fallas detectadas por el sistema 
		<b>Para</b> entender patrones y discutirlo con el mecánico.
	</td>
	<td>
		<p><strong>Escenario 1: Ver lista de alertas</strong><br/>
		Dado que el sistema ha generado alertas<br/>
		Cuando accedo a la sección "Historial de Alertas"<br/>
		Entonces veo una lista cronológica de todas las alertas (ej. "Presión de neumáticos baja", 
		"Batería degradada", "Vibración anómala").</p>
		<p><strong>Escenario 2: Ver detalle de una alerta</strong><br/>
		Dado que selecciono una alerta del historial<br/>
		Cuando se abre el detalle<br/>
		Entonces veo la fecha, hora, una descripción del problema y recomendaciones básicas.</p>
	</td>
	<td>E10</td>
	</tr>
	<tr>
	<td>US1003</td>
	<td>Análisis de Hábitos de Conducción</td>
	<td>
		<b>Como</b> conductor <b>Quiero</b> ver un reporte sobre mis hábitos de conducción 
		<b>Para</b> identificar áreas de mejora y conducir de forma más segura y eficiente.
	</td>
	<td>
		<p><strong>Escenario 1: Resumen de conducción</strong><br/>
		Dado que el dispositivo ha recopilado datos de viaje<br/>
		Cuando accedo a "Mis Hábitos de Conducción"<br/>
		Entonces veo un resumen o puntaje basado en eventos como aceleraciones bruscas, giros bruscos y excesos de velocidad.</p>
		<p><strong>Escenario 2: Filtrar por periodo</strong><br/>
		Dado que quiero analizar mi comportamiento<br/>
		Cuando selecciono un periodo de tiempo (ej. última semana, último mes)<br/>
		Entonces los datos y el puntaje se actualizan para reflejar ese periodo.</p>
	</td>
	<td>E10</td>
	</tr>
		<!--EPIC 11-->
		<tr>
			<td><b>E11</b></td>
			<td>Technical – Gestión del Ciclo de Vida del Dispositivo IoT</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar la gestión completa del ciclo de vida del dispositivo IoT incluyendo APIs de emparejamiento, gestión de estados y actualizaciones OTA <b>Para</b> soportar operaciones críticas de dispositivos conectados y mantener la integridad del ecosistema SafeCar.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY TS1101-->
		<tr>
			<td>TS1101</td>
			<td>API de Emparejamiento y Registro de Dispositivos IoT</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para el emparejamiento inicial de dispositivos IoT con vehículos <b>Para</b> establecer la asociación segura y permitir el inicio de la recolección de telemetría.
			</td>
			<td>
				<p><strong>Escenario 1: Emparejamiento exitoso de dispositivo IoT</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de emparejamiento de dispositivos IoT<br/>
				Cuando envío una solicitud POST con device_serial, vehicle_id y credentials válidos para emparejamiento<br/>
				Entonces el servidor responde con un código de estado 201 Created y recibo la información del emparejamiento exitoso con Device ID, Vehicle ID, estado activo y timestamp.</p>
				<p><strong>Escenario 2: Error por dispositivo ya emparejado</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de emparejamiento<br/>
				Cuando envío una solicitud POST para emparejar un dispositivo que ya está asociado a otro vehículo<br/>
				Entonces el servidor responde con un código de estado 409 Conflict y recibo un mensaje de error indicando que el dispositivo ya está emparejado con otro vehículo.</p>
				<p><strong>Escenario 3: Error por datos de emparejamiento inválidos</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de emparejamiento<br/>
				Cuando envío una solicitud POST con device_serial inexistente o vehicle_id inválido<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo un mensaje de error detallando qué campos son inválidos o inexistentes.</p>
			</td>
			<td>E11</td>
		</tr>
		<!--TECHNICAL STORY TS1102-->
		<tr>
			<td>TS1102</td>
			<td>API de Gestión de Estados de Dispositivos IoT</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para la gestión de estados de dispositivos (activo, inactivo, desconectado, mantenimiento) <b>Para</b> permitir el control operativo completo y monitoreo del inventario de dispositivos IoT.
			</td>
			<td>
				<p><strong>Escenario 1: Actualizar estado de dispositivo exitosamente</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de gestión de estados de dispositivos<br/>
				Cuando envío una solicitud PUT para actualizar el estado de un dispositivo con device_id válido y nuevo estado<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo confirmación del cambio de estado con Device ID, estados anterior y actual, timestamp y usuario responsable.</p>
				<p><strong>Escenario 2: Obtener estado actual de dispositivo</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de consulta de estados<br/>
				Cuando envío una solicitud GET para obtener el estado de un dispositivo por su ID<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo la información completa del estado actual del dispositivo.</p>
				<p><strong>Escenario 3: Error por dispositivo inexistente</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de gestión de estados<br/>
				Cuando envío una solicitud PUT/GET con un device_id que no existe en el sistema<br/>
				Entonces el servidor responde con un código de estado 404 Not Found y recibo un mensaje de error indicando que el dispositivo no se encuentra.</p>
			</td>
			<td>E11</td>
		</tr>
		<!--TECHNICAL STORY TS1103-->
		<tr>
			<td>TS1103</td>
			<td>API de Gestión de Firmware OTA (Over-The-Air)</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para la gestión de actualizaciones de firmware OTA <b>Para</b> mantener los dispositivos IoT actualizados de forma remota y segura.
			</td>
			<td>
				<p><strong>Escenario 1: Iniciar actualización de firmware exitosamente</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de actualizaciones OTA<br/>
				Cuando envío una solicitud POST para iniciar actualización de firmware con device_id válido y firmware_version<br/>
				Entonces el servidor responde con un código de estado 202 Accepted y recibo confirmación de inicio de actualización con Update ID, Device ID, versiones actual y objetivo, estado en progreso y duración estimada.</p>
				<p><strong>Escenario 2: Consultar progreso de actualización OTA</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de estado de actualizaciones<br/>
				Cuando envío una solicitud GET para consultar el progreso de una actualización por update_id<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo el estado actual de la actualización con porcentaje de progreso.</p>
				<p><strong>Escenario 3: Error por versión de firmware inválida</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de actualizaciones OTA<br/>
				Cuando envío una solicitud POST con una firmware_version que no existe o es incompatible<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo un mensaje de error indicando que la versión de firmware es inválida o incompatible.</p>
			</td>
			<td>E11</td>
		</tr>
		<!--EPIC 12-->
		<tr>
			<td><b>E12</b></td>
			<td>Technical – Procesamiento de Telemetría y Datos IoT</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar APIs robustas para la ingestión, almacenamiento y procesamiento de datos de telemetría vehicular <b>Para</b> garantizar la disponibilidad, consistencia y análisis en tiempo real de datos críticos de vehículos conectados.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY TS1201-->
		<tr>
			<td>TS1201</td>
			<td>API de Ingestión de Telemetría con Buffer Management</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para la ingestión continua de datos de telemetría con capacidad de manejo de buffer <b>Para</b> asegurar que no se pierdan datos críticos durante interrupciones de conectividad.
			</td>
			<td>
				<p><strong>Escenario 1: Ingestión exitosa de datos de telemetría en tiempo real</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de ingestión de telemetría<br/>
				Cuando envío una solicitud POST con payload de telemetría válido incluyendo device_id, timestamp, y sensor_data<br/>
				Entonces el servidor responde con un código de estado 201 Created y recibo confirmación de almacenamiento exitoso con Telemetry ID, Device ID, timestamp de ingestión, cantidad de datos procesados y estado almacenado.</p>
				<p><strong>Escenario 2: Procesamiento de datos en buffer por reconexión</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de sincronización de buffer<br/>
				Cuando envío una solicitud POST con array de datos de telemetría almacenados en buffer durante desconexión<br/>
				Entonces el servidor responde con un código de estado 202 Accepted y procesa los datos en lote, retornando resumen de procesamiento con datos exitosos y fallidos.</p>
				<p><strong>Escenario 3: Error por payload de telemetría inválido</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de ingestión de telemetría<br/>
				Cuando envío una solicitud POST con payload que no cumple el esquema de telemetría requerido (faltan campos obligatorios o tipos de datos incorrectos)<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo mensaje de error detallando qué campos del esquema son inválidos.</p>
			</td>
			<td>E12</td>
		</tr>
		<!--TECHNICAL STORY TS1202-->
		<tr>
			<td>TS1202</td>
			<td>API de Procesamiento de Códigos DTC y Diagnósticos</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para la detección, procesamiento y consulta de códigos DTC (Diagnostic Trouble Codes) <b>Para</b> proporcionar diagnósticos precisos y alertas tempranas basadas en estándares OBD-II.
			</td>
			<td>
				<p><strong>Escenario 1: Procesamiento exitoso de código DTC detectado</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de procesamiento de códigos DTC<br/>
				Cuando envío una solicitud POST con device_id, dtc_code, y diagnostic_data válidos<br/>
				Entonces el servidor responde con un código de estado 201 Created y recibo información del procesamiento con DTC ID, código OBD-II, descripción técnica, nivel de severidad, recomendaciones y confirmación de alerta generada.</p>
				<p><strong>Escenario 2: Consultar historial de códigos DTC por vehículo</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de consulta de historial DTC<br/>
				Cuando envío una solicitud GET con vehicle_id válido y parámetros de fecha opcional<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo lista de códigos DTC históricos con detalles de frecuencia y patrones.</p>
				<p><strong>Escenario 3: Error por código DTC no reconocido</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de procesamiento DTC<br/>
				Cuando envío una solicitud POST con un dtc_code que no existe en la base de conocimiento OBD-II<br/>
				Entonces el servidor responde con un código de estado 422 Unprocessable Entity y recibo mensaje indicando que el código DTC no es reconocido por el sistema.</p>
			</td>
			<td>E12</td>
		</tr>
		<!--TECHNICAL STORY TS1203-->
		<tr>
			<td>TS1203</td>
			<td>API de Monitoreo de Sensores Críticos y Alertas</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para el monitoreo continuo de sensores críticos y generación automática de alertas <b>Para</b> detectar anomalías vehiculares en tiempo real y prevenir fallas mayores.
			</td>
			<td>
				<p><strong>Escenario 1: Generación exitosa de alerta por sensor crítico</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de procesamiento de sensores críticos<br/>
				Cuando envío una solicitud POST con sensor_data que supera umbrales críticos configurados (presión, temperatura, voltaje)<br/>
				Entonces el servidor responde con un código de estado 201 Created y genera alerta crítica con Alert ID, tipo de sensor, valores actual y umbral, severidad, acción recomendada y ubicación GPS.</p>
				<p><strong>Escenario 2: Consultar estado actual de todos los sensores críticos</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de estado de sensores<br/>
				Cuando envío una solicitud GET con device_id válido para obtener estado actual de sensores<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo dashboard completo con valores actuales de todos los sensores críticos y su estado.</p>
				<p><strong>Escenario 3: Error por datos de sensor fuera de rango válido</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de procesamiento de sensores<br/>
				Cuando envío una solicitud POST con valores de sensor que están fuera del rango físicamente posible<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo mensaje de error indicando qué valores de sensor están fuera de rango válido.</p>
			</td>
			<td>E12</td>
		</tr>
		<!--EPIC 13-->
		<tr>
			<td><b>E13</b></td>
			<td>Technical – Motor de Análisis Inteligente y Predicción</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar APIs de análisis de datos con Machine Learning e IA <b>Para</b> proporcionar capacidades predictivas, detección de patrones de conducción y mantenimiento inteligente basado en algoritmos avanzados.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY TS1301-->
		<tr>
			<td>TS1301</td>
			<td>API de Motor de Reglas de Negocio y Configuración de Umbrales</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para la configuración y evaluación dinámica de reglas de negocio <b>Para</b> permitir la personalización de umbrales, alertas y recomendaciones según perfiles específicos de vehículos y conductores.
			</td>
			<td>
				<p><strong>Escenario 1: Configurar regla de umbral personalizada exitosamente</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de configuración de reglas de negocio<br/>
				Cuando envío una solicitud POST para crear una nueva regla con vehicle_type, sensor_type, threshold_value y action_config válidos<br/>
				Entonces el servidor responde con un código de estado 201 Created y recibo confirmación de regla creada con Rule ID, tipo de vehículo aplicable, configuración de umbrales, acciones automatizadas y estado activo.</p>
				<p><strong>Escenario 2: Evaluar reglas dinámicamente y generar recomendaciones</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de evaluación de reglas<br/>
				Cuando envío una solicitud POST con vehicle_data actual para evaluación contra reglas configuradas<br/>
				Entonces el servidor responde con un código de estado 200 OK y retorna evaluación completa con reglas violadas, recomendaciones generadas y próximas acciones.</p>
				<p><strong>Escenario 3: Error por configuración de regla inválida</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de configuración de reglas<br/>
				Cuando envío una solicitud POST con threshold_value fuera de rangos válidos o sensor_type no soportado<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo mensaje de error detallando qué parámetros de configuración de regla son inválidos.</p>
			</td>
			<td>E13</td>
		</tr>
		<!--TECHNICAL STORY TS1302-->
		<tr>
			<td>TS1302</td>
			<td>Análisis de Patrones de Conducción</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar algoritmos de análisis para detectar patrones de conducción riesgosa <b>Para</b> proporcionar feedback y recomendaciones de mejora al conductor.
			</td>
			<td>
				<p><strong>Escenario 1: Detección de conducción agresiva</strong><br/>
				Dado que el acelerómetro registra múltiples eventos de frenadas bruscas, aceleraciones repentinas y giros violentos<br/>
				Cuando el sistema analiza el patrón en un período definido<br/>
				Entonces clasifica el comportamiento como "riesgoso" y genera recomendaciones específicas de mejora.</p>
				<p><strong>Escenario 2: Cálculo de consumo eficiente</strong><br/>
				Dado que se recolectan datos de velocidad, aceleración y parámetros del motor<br/>
				Cuando el algoritmo calcula el consumo promedio<br/>
				Entonces compara con benchmarks del modelo de vehículo y proporciona consejos de ahorro de combustible.</p>
				<p><strong>Escenario 3: Identificación de patrones de riesgo de flota</strong><br/>
				Dado que múltiples vehículos muestran patrones similares de conducción riesgosa en una zona geográfica<br/>
				Cuando el sistema analiza los datos agregados<br/>
				Entonces identifica el patrón de riesgo de flota y alerta a los administradores para tomar medidas preventivas.</p>
			</td>
			<td>E13</td>
		</tr>
		<!--TECHNICAL STORY TS1303-->
		<tr>
			<td>TS1303</td>
			<td>Motor de Predicción de Fallas con IA</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar un motor de predicción basado en Machine Learning <b>Para</b> anticipar fallas potenciales y optimizar programas de mantenimiento.
			</td>
			<td>
				<p><strong>Escenario 1: Predicción de falla inminente</strong><br/>
				Dado que el modelo de IA analiza datos históricos y actuales de un vehículo<br/>
				Cuando identifica patrones que preceden a fallas conocidas<br/>
				Entonces genera una predicción de falla con probabilidad y ventana de tiempo estimada.</p>
				<p><strong>Escenario 2: Reentrenamiento del modelo</strong><br/>
				Dado que se acumulan nuevos datos históricos de fallas confirmadas<br/>
				Cuando se ejecuta el proceso de reentrenamiento programado<br/>
				Entonces el modelo actualiza sus parámetros y mejora la precisión de predicciones futuras.</p>
				<p><strong>Escenario 3: Recomendación de mantenimiento predictivo</strong><br/>
				Dado que se predice una falla potencial con alta probabilidad<br/>
				Cuando el sistema evalúa el calendario de mantenimiento<br/>
				Entonces recomienda adelantar el servicio correspondiente y envía la recomendación al conductor y taller.</p>
			</td>
			<td>E13</td>
		</tr>
		<!--EPIC 14-->
		<tr>
			<td><b>E14</b></td>
			<td>Aplicación del Conductor – Funcionalidades Avanzadas</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> acceder a funcionalidades avanzadas de análisis y control de datos <b>Para</b> tener mayor control sobre mi información y obtener insights detallados de mi vehículo.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY US1401-->
		<tr>
			<td>US1401</td>
			<td>Gestión de Privacidad y Compartir Datos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> controlar qué datos comparto con talleres y terceros <b>Para</b> mantener mi privacidad según mis preferencias.
			</td>
			<td>
				<p><strong>Escenario 1: Activar compartir datos con taller</strong><br/>
				Dado que el conductor accede a configuraciones de privacidad<br/>
				Cuando activa la opción "Compartir datos con mi taller asignado"<br/>
				Entonces el sistema habilita el acceso del taller a diagnósticos y alertas del vehículo.</p>
				<p><strong>Escenario 2: Desactivar compartir datos</strong><br/>
				Dado que el conductor tiene datos compartidos activos<br/>
				Cuando desactiva la opción de compartir<br/>
				Entonces el sistema revoca inmediatamente el acceso del taller y registra la fecha del cambio.</p>
				<p><strong>Escenario 3: Control granular por tipo de datos</strong><br/>
				Dado que el conductor quiere compartir solo ciertos tipos de información<br/>
				Cuando configura permisos específicos (ej: solo alertas críticas, no patrones de conducción)<br/>
				Entonces el sistema aplica los filtros correspondientes en el intercambio de datos.</p>
			</td>
			<td>E14</td>
		</tr>
		<!--USER STORY US1402-->
		<tr>
			<td>US1402</td>
			<td>Descarga de Reportes Técnicos</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> descargar reportes técnicos detallados de mi vehículo <b>Para</b> tener documentación completa para seguros, ventas o referencias personales.
			</td>
			<td>
				<p><strong>Escenario 1: Generar reporte completo</strong><br/>
				Dado que el conductor solicita un reporte técnico<br/>
				Cuando selecciona el período y tipo de información<br/>
				Entonces el sistema genera un PDF con historial de mantenimientos, alertas, diagnósticos y estadísticas de uso.</p>
				<p><strong>Escenario 2: Reporte para período específico</strong><br/>
				Dado que el conductor necesita información de un rango de fechas particular<br/>
				Cuando especifica las fechas de inicio y fin<br/>
				Entonces el reporte incluye solo los datos del período solicitado con resumen ejecutivo.</p>
				<p><strong>Escenario 3: Personalización de contenido</strong><br/>
				Dado que el conductor quiere incluir solo ciertos tipos de información<br/>
				Cuando selecciona categorías específicas (mantenimientos, alertas, consumo)<br/>
				Entonces el reporte se genera con únicamente las secciones seleccionadas.</p>
			</td>
			<td>E14</td>
		</tr>
		<!--USER STORY US1403-->
		<tr>
			<td>US1403</td>
			<td>Notificaciones y Consejos Personalizados</td>
			<td>
				<b>Como</b> conductor <b>Quiero</b> recibir consejos personalizados de conducción eficiente y ahorro de combustible <b>Para</b> mejorar mi desempeño y reducir costos operativos.
			</td>
			<td>
				<p><strong>Escenario 1: Consejo de conducción eficiente</strong><br/>
				Dado que el sistema identifica patrones de aceleración brusca en mis viajes<br/>
				Cuando analiza mi comportamiento semanal<br/>
				Entonces me envía consejos específicos para acelerar de forma más gradual con estimación de ahorro potencial.</p>
				<p><strong>Escenario 2: Recomendación de ahorro de combustible</strong><br/>
				Dado que mi consumo promedio está por encima del benchmark del modelo<br/>
				Cuando se acumula suficiente data para análisis confiable<br/>
				Entonces recibo recomendaciones personalizadas sobre velocidades óptimas y técnicas de conducción eficiente.</p>
				<p><strong>Escenario 3: Recordatorio de mantenimiento preventivo</strong><br/>
				Dado que se aproxima la fecha o kilometraje de un mantenimiento programado<br/>
				Cuando faltan 500 km o 15 días para el servicio<br/>
				Entonces recibo recordatorio con detalles del mantenimiento y opción para agendar cita.</p>
			</td>
			<td>E14</td>
		</tr>
		<!--EPIC 15-->
		<tr>
			<td><b>E15</b></td>
			<td>Gestión de Talleres y Mecánicos</td>
			<td>
				<b>Como</b> administrador del sistema <b>Quiero</b> gestionar el registro y operación de talleres y mecánicos <b>Para</b> mantener la red de servicios actualizada y operativa.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY US1501-->
		<tr>
			<td>US1501</td>
			<td>Registro y Administración de Talleres</td>
			<td>
				<b>Como</b> administrador <b>Quiero</b> registrar talleres en la plataforma y gestionar su información <b>Para</b> mantener la red de servicios actualizada.
			</td>
			<td>
				<p><strong>Escenario 1: Registro exitoso de taller</strong><br/>
				Dado que un nuevo taller solicita incorporarse a la plataforma<br/>
				Cuando proporciona información válida (nombre, dirección, certificaciones, servicios)<br/>
				Entonces el sistema crea el perfil del taller y lo activa para recibir citas.</p>
				<p><strong>Escenario 2: Validación de datos requeridos</strong><br/>
				Dado que se intenta registrar un taller con información incompleta<br/>
				Cuando falta información obligatoria (licencia comercial, dirección, contacto)<br/>
				Entonces el sistema rechaza el registro e indica los campos faltantes.</p>
				<p><strong>Escenario 3: Dar de baja taller</strong><br/>
				Dado que un taller debe ser removido de la plataforma<br/>
				Cuando el administrador confirma la baja<br/>
				Entonces el sistema desactiva el taller, reasigna conductores activos y notifica los cambios.</p>
			</td>
			<td>E15</td>
		</tr>
		<!--USER STORY US1502-->
		<tr>
			<td>US1502</td>
			<td>Gestión de Mecánicos y Especializaciones</td>
			<td>
				<b>Como</b> administrador del taller <b>Quiero</b> registrar mecánicos y sus especializaciones <b>Para</b> optimizar la asignación de trabajos según experticia.
			</td>
			<td>
				<p><strong>Escenario 1: Registro de mecánico con especializaciones</strong><br/>
				Dado que se registra un nuevo mecánico en un taller<br/>
				Cuando se especifican sus certificaciones y áreas de expertise<br/>
				Entonces el sistema asocia al mecánico con tipos de servicios específicos para asignación automática.</p>
				<p><strong>Escenario 2: Actualización de capacidades</strong><br/>
				Dado que un mecánico obtiene nuevas certificaciones<br/>
				Cuando se actualizan sus especializaciones en el perfil<br/>
				Entonces el sistema amplía los tipos de órdenes de trabajo que puede recibir.</p>
				<p><strong>Escenario 3: Control de disponibilidad</strong><br/>
				Dado que un mecánico no está disponible temporalmente<br/>
				Cuando se marca como "no disponible" con fecha de retorno<br/>
				Entonces el sistema no le asigna nuevas órdenes hasta la fecha especificada.</p>
			</td>
			<td>E15</td>
		</tr>
		<!--USER STORY US1503-->
		<tr>
			<td>US1503</td>
			<td>Generación Automática de Reportes Técnicos</td>
			<td>
				<b>Como</b> mecánico <b>Quiero</b> que el sistema genere automáticamente reportes técnicos basados en diagnósticos IoT <b>Para</b> agilizar la documentación de servicios.
			</td>
			<td>
				<p><strong>Escenario 1: Reporte automático post-diagnóstico</strong><br/>
				Dado que se completa el diagnóstico de un vehículo con datos IoT disponibles<br/>
				Cuando el mecánico confirma los hallazgos<br/>
				Entonces el sistema genera automáticamente un reporte técnico pre-completado con datos de sensores y códigos DTC.</p>
				<p><strong>Escenario 2: Integración con órdenes de trabajo</strong><br/>
				Dado que se crea una orden de trabajo a partir de una cita<br/>
				Cuando hay datos de telemetría relevantes disponibles<br/>
				Entonces el reporte incluye automáticamente el historial reciente de alertas y diagnósticos del vehículo.</p>
				<p><strong>Escenario 3: Descarga y envío del reporte</strong><br/>
				Dado que el reporte técnico está completo<br/>
				Cuando el mecánico finaliza el servicio<br/>
				Entonces el sistema envía automáticamente una copia al conductor y la archiva en el historial del vehículo.</p>
			</td>
			<td>E15</td>
		</tr>
		<!--EPIC 16-->
		<tr>
			<td><b>E16</b></td>
			<td>Technical – APIs de Panel Administrativo y BackOffice</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar APIs comprehensivas de administración y gestión operacional <b>Para</b> proporcionar herramientas avanzadas de monitoreo, control de inventario, gestión de usuarios y analytics empresariales del ecosistema SafeCar.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--USER STORY US1601-->
		<tr>
			<td>US1601</td>
			<td>API de Gestión de Inventario de Dispositivos IoT</td>
			<td>
				<b>Como</b> administrador del sistema <b>Quiero</b> APIs REST para la gestión completa del inventario de dispositivos IoT <b>Para</b> controlar stock, asignaciones, estados operativos y ciclo de vida completo de dispositivos.
			</td>
			<td>
				<p><strong>Escenario 1: Registrar nuevos dispositivos IoT en inventario exitosamente</strong><br/>
				Dado que tengo autorización de administrador en el uso de la API y al endpoint de gestión de inventario<br/>
				Cuando envío una solicitud POST con batch de dispositivos incluyendo serial_numbers, model_type, y specifications válidos<br/>
				Entonces el servidor responde con un código de estado 201 Created y recibo confirmación de registro con Batch ID, contador de dispositivos, registros exitosos y fallidos, y estado actualizado del inventario.</p>
				<p><strong>Escenario 2: Consultar estado completo del inventario</strong><br/>
				Dado que tengo autorización de administrador y acceso al endpoint de consulta de inventario<br/>
				Cuando envío una solicitud GET con filtros opcionales de estado, modelo, y ubicación<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo dashboard completo del inventario con métricas de distribución por estado.</p>
				<p><strong>Escenario 3: Error por dispositivos duplicados en el sistema</strong><br/>
				Dado que tengo autorización de administrador en el uso de la API de inventario<br/>
				Cuando envío una solicitud POST intentando registrar dispositivos con serial_numbers que ya existen en el sistema<br/>
				Entonces el servidor responde con un código de estado 409 Conflict y recibo mensaje detallado indicando qué serial_numbers están duplicados.</p>
			</td>
			<td>E16</td>
		</tr>
		<!--USER STORY US1602-->
		<tr>
			<td>US1602</td>
			<td>Monitoreo de Conectividad y Alertas Masivas</td>
			<td>
				<b>Como</b> administrador <b>Quiero</b> monitorear la conectividad global de dispositivos y detectar fallas masivas <b>Para</b> responder proactivamente a incidentes sistémicos.
			</td>
			<td>
				<p><strong>Escenario 1: Detección de falla masiva de conectividad</strong><br/>
				Dado que más del 20% de dispositivos en una región pierden conectividad simultáneamente<br/>
				Cuando el sistema detecta el patrón anómalo<br/>
				Entonces genera una alerta de "Falla masiva de conectividad" y notifica al equipo de soporte técnico.</p>
				<p><strong>Escenario 2: Dashboard de estado en tiempo real</strong><br/>
				Dado que el administrador accede al panel de monitoreo<br/>
				Cuando visualiza el estado de conectividad<br/>
				Entonces ve un mapa con el estatus de todos los dispositivos categorizados por estado (activo, desconectado, error).</p>
				<p><strong>Escenario 3: Reportes de disponibilidad</strong><br/>
				Dado que se requiere un análisis de disponibilidad del servicio<br/>
				Cuando se solicita un reporte mensual<br/>
				Entonces el sistema genera estadísticas de uptime por región, tipo de dispositivo y períodos de mayor/menor disponibilidad.</p>
			</td>
			<td>E16</td>
		</tr>
		<!--USER STORY US1603-->
		<tr>
			<td>US1603</td>
			<td>Gestión de Planes de Suscripción</td>
			<td>
				<b>Como</b> administrador de cuentas <b>Quiero</b> gestionar los planes de suscripción de usuarios <b>Para</b> controlar acceso a funcionalidades y facturación.
			</td>
			<td>
				<p><strong>Escenario 1: Activación automática de plan</strong><br/>
				Dado que un usuario completa el proceso de pago de una suscripción<br/>
				Cuando se confirma el pago<br/>
				Entonces el sistema activa automáticamente el plan correspondiente y habilita las funcionalidades incluidas.</p>
				<p><strong>Escenario 2: Renovación automática de suscripción</strong><br/>
				Dado que una suscripción se aproxima a su fecha de vencimiento<br/>
				Cuando faltan 7 días para el vencimiento<br/>
				Entonces el sistema intenta la renovación automática y notifica al usuario del resultado.</p>
				<p><strong>Escenario 3: Cancelación y degradación de servicios</strong><br/>
				Dado que un usuario cancela su suscripción premium<br/>
				Cuando se confirma la cancelación<br/>
				Entonces el sistema mantiene el servicio hasta el final del período pagado y luego degrada a plan básico con notificación correspondiente.</p>
			</td>
			<td>E16</td>
		</tr>
		<!--EPIC 17-->
		<tr>
			<td><b>E17</b></td>
			<td>Technical – Geocercas y Análisis Geoespacial</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar funcionalidades de geocercas y análisis geoespacial <b>Para</b> detectar violaciones de perímetro y proporcionar análisis basado en ubicación.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY TS1701-->
		<tr>
			<td>TS1701</td>
			<td>Definición y Gestión de Geocercas</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar el sistema de creación y gestión de geocercas <b>Para</b> permitir monitoreo de ubicaciones específicas.
			</td>
			<td>
				<p><strong>Escenario 1: Creación de geocerca circular</strong><br/>
				Dado que se requiere definir una zona de monitoreo circular<br/>
				Cuando se especifica centro (latitud, longitud) y radio<br/>
				Entonces el sistema crea la geocerca y la activa para detección de violaciones.</p>
				<p><strong>Escenario 2: Geocerca poligonal compleja</strong><br/>
				Dado que se necesita una zona de forma irregular<br/>
				Cuando se proporcionan múltiples puntos de coordenadas que forman un polígono<br/>
				Entonces el sistema valida el polígono y lo registra como geocerca activa.</p>
				<p><strong>Escenario 3: Gestión de múltiples geocercas por vehículo</strong><br/>
				Dado que un vehículo requiere múltiples zonas de monitoreo<br/>
				Cuando se asignan geocercas con diferentes prioridades<br/>
				Entonces el sistema evalúa todas las geocercas y aplica la regla de mayor prioridad en caso de solapamiento.</p>
			</td>
			<td>E17</td>
		</tr>
		<!--TECHNICAL STORY TS1702-->
		<tr>
			<td>TS1702</td>
			<td>Detección de Violación de Geocercas</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar la detección en tiempo real de violaciones de geocerca <b>Para</b> generar alertas de ubicación inmediatas.
			</td>
			<td>
				<p><strong>Escenario 1: Entrada no autorizada</strong><br/>
				Dado que un vehículo entra en una geocerca configurada como "No permitida"<br/>
				Cuando el GPS reporta una ubicación dentro del perímetro prohibido<br/>
				Entonces se genera inmediatamente una alerta de "Violación de geocerca - Entrada" con timestamp y ubicación exacta.</p>
				<p><strong>Escenario 2: Salida de zona autorizada</strong><br/>
				Dado que un vehículo sale de una geocerca configurada como "Requerida"<br/>
				Cuando el GPS indica ubicación fuera del perímetro<br/>
				Entonces se emite alerta de "Violación de geocerca - Salida" y se inicia seguimiento especial.</p>
				<p><strong>Escenario 3: Persistencia de violación</strong><br/>
				Dado que una violación de geocerca se mantiene por más de 15 minutos<br/>
				Cuando el vehículo permanece en estado de violación<br/>
				Entonces se escala la alerta y se notifica a supervisores designados.</p>
			</td>
			<td>E17</td>
		</tr>
		<!--EPIC 18-->
		<tr>
			<td><b>E18</b></td>
			<td>Technical – Integración con APIs Externas y Servicios de Terceros</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar integraciones robustas con APIs externas y servicios de terceros <b>Para</b> enriquecer funcionalidades del ecosistema SafeCar mediante servicios de mapas, geocoding, mensajería multi-canal y plataformas de analytics externas.
			</td>
			<td></td>
			<td></td>
		</tr>
		<!--TECHNICAL STORY TS1801-->
		<tr>
			<td>TS1801</td>
			<td>API de Integración con Servicios de Geolocalización y Mapas</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para integración con APIs de mapas y servicios de geolocalización <b>Para</b> proporcionar capacidades avanzadas de ubicación, routing y análisis geoespacial.
			</td>
			<td>
				<p><strong>Escenario 1: Obtener geocoding de coordenadas a dirección exitosamente</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de servicios de geocoding<br/>
				Cuando envío una solicitud POST con latitude, longitude válidas para conversión a dirección legible<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo información de ubicación completa con dirección formateada, componentes de la dirección, tipo de ubicación y puntuación de precisión.</p>
				<p><strong>Escenario 2: Calcular ruta óptima entre dos puntos</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de cálculo de rutas<br/>
				Cuando envío una solicitud POST con origin_coordinates, destination_coordinates y routing_preferences<br/>
				Entonces el servidor responde con un código de estado 200 OK y recibo información de ruta optimizada con distancia, tiempo estimado, y waypoints detallados.</p>
				<p><strong>Escenario 3: Error por coordenadas fuera de rango válido</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de geocoding<br/>
				Cuando envío una solicitud POST con latitude o longitude fuera de rangos válidos (-90/90 para lat, -180/180 para lon)<br/>
				Entonces el servidor responde con un código de estado 400 Bad Request y recibo mensaje de error indicando que las coordenadas están fuera del rango geográfico válido.</p>
			</td>
			<td>E18</td>
		</tr>
		<!--TECHNICAL STORY TS1802-->
		<tr>
			<td>TS1802</td>
			<td>Integración con Plataformas de Mensajería</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> integrar múltiples canales de notificación (SMS, email, push) <b>Para</b> asegurar la entrega confiable de alertas críticas.
			</td>
			<td>
				<p><strong>Escenario 1: Notificación multi-canal para alertas críticas</strong><br/>
				Dado que se genera una alerta crítica (sobrecalentamiento, falla crítica)<br/>
				Cuando se determina que requiere notificación inmediata<br/>
				Entonces el sistema envía la alerta simultáneamente por push notification, SMS y email según preferencias del usuario.</p>
				<p><strong>Escenario 2: Confirmación de entrega</strong><br/>
				Dado que se envía una notificación importante<br/>
				Cuando se utiliza un canal específico (SMS, email)<br/>
				Entonces el sistema rastrea el estado de entrega y reintenta con canal alternativo en caso de falla.</p>
				<p><strong>Escenario 3: Personalización por tipo de alerta</strong><br/>
				Dado que diferentes tipos de alertas tienen diferentes niveles de urgencia<br/>
				Cuando se configuran las reglas de notificación<br/>
				Entonces cada tipo de alerta utiliza los canales apropiados según su criticidad (crítica: todos los canales, moderada: push + email, informativa: solo push).</p>
			</td>
			<td>E18</td>
		</tr>
		<!--TECHNICAL STORY TS1901-->
		<tr>
			<td>TS1901</td>
			<td>Monitoreo y Observabilidad del Sistema</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar monitoreo comprehensivo y observabilidad <b>Para</b> mantener la salud del sistema y diagnosticar problemas rápidamente.
			</td>
			<td>
				<p><strong>Escenario 1: Métricas de rendimiento en tiempo real</strong><br/>
				Dado que el sistema está en operación<br/>
				Cuando se monitorea el rendimiento de componentes críticos<br/>
				Entonces se recolectan y visualizan métricas de latencia, throughput, tasa de errores y utilización de recursos.</p>
				<p><strong>Escenario 2: Alertas de salud del sistema</strong><br/>
				Dado que una métrica excede umbrales críticos<br/>
				Cuando el sistema detecta la anomalía<br/>
				Entonces genera alerta automática al equipo de operaciones con contexto específico del problema.</p>
				<p><strong>Escenario 3: Trazabilidad distribuida</strong><br/>
				Dado que una transacción atraviesa múltiples microservicios<br/>
				Cuando se requiere diagnosticar un problema<br/>
				Entonces el sistema proporciona trazabilidad completa de la request con tiempos de ejecución por servicio.</p>
			</td>
			<td>E18</td>
		</tr>
		<!--TECHNICAL STORY TS1902-->
		<tr>
			<td>TS1902</td>
			<td>API de Seguridad y Cifrado de Datos End-to-End</td>
			<td>
				<b>Como</b> Developer <b>Quiero</b> implementar endpoints REST para gestión de seguridad y cifrado de datos <b>Para</b> proteger información sensible de vehículos y usuarios mediante cifrado robusto y autenticación multi-factor.
			</td>
			<td>
				<p><strong>Escenario 1: Autenticar dispositivo IoT con certificados PKI exitosamente</strong><br/>
				Dado que tengo acceso al endpoint de autenticación de dispositivos IoT con PKI<br/>
				Cuando un dispositivo envía una solicitud POST con su certificado digital válido y cadena de confianza<br/>
				Entonces el servidor responde con un código de estado 200 OK y retorna token de autenticación JWT con Access Token, Device ID, estado de certificado, permisos, tiempo de expiración y refresh token.</p>
				<p><strong>Escenario 2: Cifrar datos sensibles antes del almacenamiento</strong><br/>
				Dado que tengo autorización en el uso de la API y al endpoint de cifrado de datos<br/>
				Cuando envío una solicitud POST con payload de datos sensibles (ubicaciones, patrones de conducción) para cifrado<br/>
				Entonces el servidor responde con un código de estado 201 Created y retorna confirmación de cifrado con identificador de clave utilizada.</p>
				<p><strong>Escenario 3: Error por certificado digital expirado o inválido</strong><br/>
				Dado que un dispositivo intenta autenticarse con certificado digital<br/>
				Cuando envía una solicitud POST con certificado expirado o cadena de confianza inválida<br/>
				Entonces el servidor responde con un código de estado 401 Unauthorized y recibo mensaje de error indicando el problema específico con el certificado digital.</p>
			</td>
			<td>E18</td>
		</tr>
  </tbody>
</table>

## 3.2. Impact Mapping

En esta sección, se presentarán los mapas de impacto para cada segmento objetivo definido para el desarrollo del proyecto. El objetivo de desarrollar estos mapas es alinear los objetivos de negocio con las necesidades de los usuarios. También, se puede visualizar de manera clara qué impacto se desea generar en el comportamiento de los usuarios finales y qué entregables se deben desarrollar para lograr alcanzar cada una de las metas mencionadas.

● Segmento objetivo 1:
Este mapa se enfoca en cómo la plataforma ayudará a los conductores a mantener su vehículo en óptimas condiciones, anticipar problemas y tomar el control de su mantenimiento.

![Texto alternativo para la imagen](https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-III/assets/img/capitulo-III/Impact%20map%201.png)


● Segmento objetivo 2: 
Este mapa se centra en cómo la plataforma puede mejorar la eficiencia operativa, la gestión de clientes y la rentabilidad de los talleres.

![Texto alternativo para la imagen](https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-III/assets/img/capitulo-III/Impact%20map%202.png)

## 3.3. Product Backlog
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
			<td>Como taller Quiero visualizar la agenda en vista diaria y semanal Para organizar el trabajo del equipo.</td>
			<td>3</td>
		</tr>
		<tr>
			<td>16</td>
			<td>US602</td>
			<td>Crear cita manual</td>
			<td>Como taller Quiero registrar una cita con cliente, vehículo, fecha y servicio Para agendar una visita.</td>
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

![Texto alternativo para la imagen](https://raw.githubusercontent.com/MetaSoft-IOT/upc-pre-202520-1asi0572-3479-MetaSoft-report/docs/capitulo-III/assets/img/capitulo-III/sprint backlog.png)

