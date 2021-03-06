object berghain {
	var patovica
	var pistasDeBaile = #{mainRoom,panoramaBar,darkRoom}
	method patovica(patova){
		patovica = patova
	}
	method quiereEntrar(persona){
		return patovica.dejarPasar(persona)
	}
	method seEncuentraEnAlgunaPista(persona) {
		return pistasDeBaile.any({pista => pista.estaBailandoUnaPersona(persona)})
	}
}
object rochensen {
	method dejarPasar(persona){
		return persona.edad()>21
	}
}
object rodrigsen {
	method dejarPasar(persona){
		return persona.colorRopa() == "negro"
	}
}
object gustavotruccensen {
	method dejarPasar(persona){
		return false
	}
}
object mainRoom {
	var personasBailando = #{}
	method bailar(persona){
		persona.disminuirEnergia(40)
		persona.aumentarDiversion(30)
		personasBailando.add(persona)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}
	method estaBailandoUnaPersona(persona){
		return personasBailando.contains(persona)
	}
}
object panoramaBar {
	var dj 
	var personasBailando = #{}
	method dj(unDj){
		dj = unDj
	}
	method bailar(persona){
		dj.tocarEnPanoramaBar(persona)
		personasBailando.add(persona)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}
	method estaBailandoUnaPersona(persona){
		return personasBailando.contains(persona)
	}
}
object darkRoom {
	var personasBailando = #{}
	method bailar(persona) {
		personasBailando.add(persona)
	}
	method cantidadDePersonasBailando(){
		return personasBailando.size()
	}
	method estaBailandoUnaPersona(persona){
		return personasBailando.contains(persona)
	}
}
object dixon {
	method tocarEnPanoramaBar(persona){
		persona.disminuirEnergia(60)
		persona.aumentarDiversion(120)
	}
}
object marcelDettmann {
	method tocarEnPanoramaBar(persona){
		persona.disminuirEnergia(persona.energia())
		persona.aumentarDiversion(1000)
	}
}
object tommyMunoz {
	method tocarEnPanoramaBar(persona){
		persona.disminuirEnergia(80)
	}
}

object vonLukaz {
	var energia = 150
	var diversion = 70
	var edad = 17
	var colorRopa = "blanca"

	method edad() {
		return edad
	}
	method energia(){
		return energia
	}
	method colorRopa() {
		return colorRopa
	}
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	method aumentarDiversion(cantidad){
		diversion += cantidad
	}
	method diversion(){
		return diversion
	}
}
object bianker {
	var energia = 140 
	var diversion = 80
	var edad = 22
	var colorRopa = "negro"

	method edad() {
		return edad
	}
	method energia(){
		return energia
	}
	method colorRopa() {
		return colorRopa
	}
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	method aumentarDiversion(cantidad){
		diversion += cantidad
	}
	method diversion(){
		return diversion
	}
}

object gonzen {
	var energia = 90
	var diversion = 15
	var edad = 33 
	var colorRopa = "negro"

	method edad() {
		return edad
	}
	method energia(){
		return energia
	}
	method colorRopa() {
		return colorRopa
	}
	method disminuirEnergia(cantidad){
		energia -= cantidad
	}
	method aumentarDiversion(cantidad){
		diversion += cantidad
	}
	method diversion(){
		return diversion
	}
}
