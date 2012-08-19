<%@ page import="controlcursos.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="curso.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${cursoInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="curso.alumnos.label" default="Alumnos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.alumnos?}" var="a">
    <li><g:link controller="alumno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="curso.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${cursoInstance?.codigo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'duracion', 'error')} ">
	<label for="duracion">
		<g:message code="curso.duracion.label" default="Duracion" />
		
	</label>
	<g:textField name="duracion" value="${cursoInstance?.duracion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${controlcursos.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.profesor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'programa', 'error')} ">
	<label for="programa">
		<g:message code="curso.programa.label" default="Programa" />
		
	</label>
	<g:textField name="programa" value="${cursoInstance?.programa}"/>
</div>

