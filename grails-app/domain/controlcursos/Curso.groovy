package controlcursos

class Curso {

	String titulo
	String codigo
	String duracion
	String programa

	static hasMany = [alumnos:Alumno]
	static belongsTo=[profesor:Profesor]

    static constraints = {
    	titulo blank:false
    	programa: maxSize: 300
    }

    String toString(){
		return titulo
    }
}
