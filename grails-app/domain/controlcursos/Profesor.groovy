package controlcursos

class Profesor {

   	String nombre
	String apellidos
	String telefono
	String direccion
	String correo

	static hasMany = [cursos:Curso]

    static constraints = {
    	correo email:true
    	nombre blank:false
    }

    String toString(){
		return "${nombre} ${apellidos}"
    }
}
	