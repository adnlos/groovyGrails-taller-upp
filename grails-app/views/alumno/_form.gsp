<%@ page import="controlcursos.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'matricula', 'error')} ">
	<label for="matricula">
		<g:message code="alumno.matricula.label" default="Matricula" />
		
	</label>
	<g:textField name="matricula" maxlength="8" value="${alumnoInstance?.matricula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		
	</label>
	<g:field type="email" name="correo" value="${alumnoInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="alumno.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${controlcursos.Curso.list()}" optionKey="id" required="" value="${alumnoInstance?.curso?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="alumno.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${alumnoInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'edad', 'error')} ">
	<label for="edad">
		<g:message code="alumno.edad.label" default="Edad" />
		
	</label>
	<g:textField name="edad" value="${alumnoInstance?.edad}"/>
</div>

