import enfermedadAutoinmine.*
import enfermedadInfecciosa.*
class Persona {
	var temperatura
	var celulas
	var enfermedades = []
	
	constructor(unaTemperatura,unaCantidadDeCelulas){
		temperatura =  unaTemperatura
		celulas = unaCantidadDeCelulas
	}
	method temperatura(){
		return temperatura
	}
	method celulas(){
		return celulas
	}
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	method aumentarTemperatura(unaCantidad){
		temperatura = 45.min(temperatura + unaCantidad)
	}
	method matarCelulas(unaCantidad){
		celulas -= unaCantidad
	}
	method vivirUnDia(){
		enfermedades.forEach({enfermedad => enfermedad.infectarA(self) })
	}

}