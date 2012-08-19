<%@ page import="controlcursos.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="profesor.correo.label" default="Correo" />
		
	</label>
	<g:field type="email" name="correo" value="${profesorInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${profesorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="profesor.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${profesorInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="profesor.cursos.label" default="Cursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profesorInstance?.cursos?}" var="c">
    <li><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="curso" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'curso.label', default: 'Curso')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="profesor.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${profesorInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="profesor.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${profesorInstance?.telefono}"/>
</div>

