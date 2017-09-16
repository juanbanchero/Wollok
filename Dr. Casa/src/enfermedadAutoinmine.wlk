import persona.*
class EnfermedadAutoinmune {
	var celulasAmenazadas
	var personasAfectadas = []

	constructor(cantidadDeCelulasAmenazadas){
		
		celulasAmenazadas = cantidadDeCelulasAmenazadas
	}
	method infectarA(unaPersona){
		unaPersona.matarCelulas(celulasAmenazadas)
		personasAfectadas.add(unaPersona)	
		}
	method esAgresiva(unaPersona){
		return personasAfectadas.contains(unaPersona) && personasAfectadas.filter(unaPersona).size() > 30
		}

}