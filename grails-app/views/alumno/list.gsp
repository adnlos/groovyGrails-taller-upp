
<%@ page import="controlcursos.Alumno" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
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
				<g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
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
			<div class="pagination">
				<g:paginate total="${alumnoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
