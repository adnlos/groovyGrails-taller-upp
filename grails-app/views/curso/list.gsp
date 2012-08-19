
<%@ page import="controlcursos.Curso" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'curso.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'curso.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="duracion" title="${message(code: 'curso.duracion.label', default: 'Duracion')}" />
					
						<th><g:message code="curso.profesor.label" default="Profesor" /></th>
					
						<g:sortableColumn property="programa" title="${message(code: 'curso.programa.label', default: 'Programa')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "duracion")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "profesor")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "programa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
