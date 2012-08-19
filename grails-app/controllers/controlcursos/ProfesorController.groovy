package controlcursos

import org.springframework.dao.DataIntegrityViolationException

class ProfesorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [profesorInstanceList: Profesor.list(params), profesorInstanceTotal: Profesor.count()]
    }

    def create() {
        [profesorInstance: new Profesor(params)]
    }

    def save() {
        def profesorInstance = new Profesor(params)
        if (!profesorInstance.save(flush: true)) {
            render(view: "create", model: [profesorInstance: profesorInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'profesor.label', default: 'Profesor'), profesorInstance.id])
        redirect(action: "show", id: profesorInstance.id)
    }

    def show() {
        def profesorInstance = Profesor.get(params.id)
        if (!profesorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "list")
            return
        }

        [profesorInstance: profesorInstance]
    }

    def edit() {
        def profesorInstance = Profesor.get(params.id)
        if (!profesorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "list")
            return
        }

        [profesorInstance: profesorInstance]
    }

    def update() {
        def profesorInstance = Profesor.get(params.id)
        if (!profesorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (profesorInstance.version > version) {
                profesorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'profesor.label', default: 'Profesor')] as Object[],
                          "Another user has updated this Profesor while you were editing")
                render(view: "edit", model: [profesorInstance: profesorInstance])
                return
            }
        }

        profesorInstance.properties = params

        if (!profesorInstance.save(flush: true)) {
            render(view: "edit", model: [profesorInstance: profesorInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'profesor.label', default: 'Profesor'), profesorInstance.id])
        redirect(action: "show", id: profesorInstance.id)
    }

    def delete() {
        def profesorInstance = Profesor.get(params.id)
        if (!profesorInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "list")
            return
        }

        try {
            profesorInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
