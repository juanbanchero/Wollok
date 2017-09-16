import persona.*
class EnfermedadInfecciosa {
	var celulasAmenazadas

	constructor(cantidadDeCelulasAmenazadas){
		
		celulasAmenazadas = cantidadDeCelulasAmenazadas
	}
	
	method infectarA(unaPersona){
		unaPersona.aumentarTemperatura(celulasAmenazadas/1000)
	}
	method reproducirse(){
		celulasAmenazadas = celulasAmenazadas*2
	}
	method esAgresiva(unaPersona){
		return celulasAmenazadas > unaPersona.celulas()*0.1 
	}
	

}