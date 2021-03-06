<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class="js canvas canvastext geolocation rgba hsla no-multiplebgs borderimage borderradius boxshadow opacity no-cssanimations csscolumns no-cssgradients no-cssreflections csstransforms no-csstransforms3d no-csstransitions  video audio cufon-active fontface cufon-ready" lang="es"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<script src="js/modernizr.js"></script>
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
		<header>
			<h1>
			<a href="http://grails.org"><img src="${resource(dir: 	'images', file: 'logo.png')}" height="100px" width="120px" alt="Grails"/>
			</a>
			</h1>
			<nav>
				<ul>
					<li><g:link controller="profesor"  action="create">Nuevo Profesor</g:link></li>

					<li><g:link controller = "alumno" action="create">Nuevo Alumno</g:link></li>
					
					<li><g:link controller="curso" action="create">Nuevo Curso</g:link></li>

					<li><g:link controller="curso" action="reporte">Reporte Asistencia</g:link></li>
				</ul>
			</nav>
		</header>

		<section>
			<g:layoutBody/>
		</section>
		
		<footer>
			<a href="http://twitter.com/adnlos">@adnlos</a>
		</footer>	
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>