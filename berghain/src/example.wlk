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
	method bailar(persona){
		persona.disminuirEnergia(40)
		persona.aumentarDiversion(30)
	}
}
object panoramaBar {
	var dj = #{dixon,marcelDettmann,tommyMunoz}
	
	method bailar(persona){
		dj.tocarEnPanoramaBar(persona)
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
}
