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
		persona.estaEnMainRoom()
	}
}
object panoramaBar {
	var dj = #{dixon,marcelDettmann,tommyMunoz}
	
	method bailar(persona){
		
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

	method colorRopa() {
		return colorRopa
	}
	method estaEnMainRoom(){
		energia -= 40
		diversion += 30
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
	method colorRopa() {
		return colorRopa
	}
	method estaEnMainRoom(){
		energia -= 40
		diversion += 30
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
	method colorRopa() {
		return colorRopa
	}
	method estaEnMainRoom(){
		energia -= 40
		diversion += 30
	}
}
