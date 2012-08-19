
<%@ page import="controlcursos.Profesor" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profesor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="correo" title="${message(code: 'profesor.correo.label', default: 'Correo')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'profesor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'profesor.apellidos.label', default: 'Apellidos')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'profesor.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'profesor.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profesorInstance.id}">${fieldValue(bean: profesorInstance, field: "correo")}</g:link></td>
					
						<td>${fieldValue(bean: profesorInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profesorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
