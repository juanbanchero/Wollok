import persona.*
class EnfermedadAutoinmune {
	var celulasAmenazadas
	var personasAfectadas = new Dictionary()

	constructor(cantidadDeCelulasAmenazadas){
		
		celulasAmenazadas = cantidadDeCelulasAmenazadas
	}
	method infectarA(unaPersona){
		unaPersona.matarCelulas(celulasAmenazadas)
		self.sumarUnDiaPara(unaPersona)	
		}
	method esAgresiva(unaPersona){
		return personasAfectadas.contains(unaPersona) && personasAfectadas.filter(unaPersona).size() > 30
		}
		
	method sumarUnDiaPara(unaPersona) {
		personasAfectadas.put(unaPersona, self.cantidadDiasAfectandoA(unaPersona) + 1)
	}
	
	method esAgresivaPara(unaPersona) {
		return self.cantidadDiasAfectandoA(unaPersona) > 30
	}
	
	method cantidadDiasAfectandoA(unaPersona) {
		
		return personasAfectadas.getOrElse(unaPersona, {0})
	}
	method celulasAmenazadas(){
		return celulasAmenazadas
	}

}