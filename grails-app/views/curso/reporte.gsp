<%@ page import="controlcursos.Curso" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:form action="reporte" >
			<g:select id="idCurso" name="curso.id" from="${controlcursos.Curso.list()}" optionKey="id" class="many-to-one"/>
			<g:submitButton name="create" class="save" value="${message(code: 'default.button.reporte.label', default: 'Revisar Asistencia')}" />
		</g:form>
		<br>
		<h4>Curso:<h4>
		<h2>${cursoInstance?.titulo}</h2>
		<h3>${cursoInstance?.codigo}</h3>
		<br>
		<h4>Impartido por:<h4>
		<h2>${cursoInstance?.profesor?.nombre}</h2>
		<h3>${cursoInstance?.profesor?.apellidos}</h3>
		<br>
		<table>
			<thead>
				<tr>
				
					<g:sortableColumn property="nombre" title="${message(code: 'alumno.nombre.label', default: 'Nombre')}" />
				
					<g:sortableColumn property="matricula" title="${message(code: 'alumno.matricula.label', default: 'Matricula')}" />
				
					<g:sortableColumn property="correo" title="${message(code: 'alumno.correo.label', default: 'Correo')}" />
				
					<th><g:message code="alumno.curso.label" default="Curso" /></th>
				
					<g:sortableColumn property="direccion" title="${message(code: 'alumno.direccion.label', default: 'Direccion')}" />
				
					<g:sortableColumn property="edad" title="${message(code: 'alumno.edad.label', default: 'Edad')}" />
				
				</tr>
			</thead>
			<tbody>
			<g:each in="${cursoInstance?.alumnos}" status="i" var="alumnoInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				
					<td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "nombre")}</g:link></td>
				
					<td>${fieldValue(bean: alumnoInstance, field: "matricula")}</td>
				
					<td>${fieldValue(bean: alumnoInstance, field: "correo")}</td>
				
					<td>${fieldValue(bean: alumnoInstance, field: "curso")}</td>
				
					<td>${fieldValue(bean: alumnoInstance, field: "direccion")}</td>
				
					<td>${fieldValue(bean: alumnoInstance, field: "edad")}</td>
				
				</tr>
			</g:each>
			</tbody>
		</table>
	</body>
</html>
