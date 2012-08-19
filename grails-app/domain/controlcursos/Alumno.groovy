package controlcursos

class Alumno {

    String nombre
	String direccion
	String edad
	String matricula
	String correo
	Curso curso

	static belongsTo=[curso:Curso] 

    static constraints = {
    	nombre blank:false
    	matricula size:3..8
    	correo email:true
    }

    String toString(){
    	return "${matricula} - ${nombre}"
    }
}
