object horacioPagani {
	var nivelDeEnojo = 0

	method elevarVoz() {
		self.aumentarNivelDeEnojo(10)
	}
	method aumentarNivelDeEnojo(unaCantidad){
		nivelDeEnojo += unaCantidad
	}
	method disminuirNivelDeEnojo(unaCantidad) {
		nivelDeEnojo = 0.max(nivelDeEnojo - unaCantidad)
	}
	method tomarAgua() {
		self.disminuirNivelDeEnojo(nivelDeEnojo * 0.1)
	}

	method calmarse(unosMinutos) {
		if(!self.estaCaliente())
		{
			nivelDeEnojo = 0
		}
	}
	method estaCaliente() {
		return (nivelDeEnojo >= 20)
	}
	method nivelDeEnojo (){
		return nivelDeEnojo
	}
}
object totiPasman {
	var soberbia = 0
	var tieneSed = false
	
	method elevarVoz(){
		self.aumentarSoberbia(10)
		tieneSed = true
	}
	method aumentarSoberbia(unaCantidad){
		soberbia += unaCantidad
	}
	method tomarAgua(){
		tieneSed = false
	}
	method calmarse(unaCantidad){
		self.disminuirSoberbia(unaCantidad * 2)
	}
	method disminuirSoberbia(unaCantidad){
		soberbia -= unaCantidad
	}
	method soberbia(){
		return soberbia
	}
	method tieneSed(){
		return (tieneSed)
	}
}
object fantino {
	method hacerOpinarDeportesA(unPanelista){
		unPanelista.elevarVoz()
		2.times{
			unPanelista.tomarAgua()
		}
		unPanelista.calmarse(10)
	}
}
object lizzyTagliani {
	var humor = 30
	
	method tomarAgua() {
		self.aumentarHumor(humor * 2)
	}
	method aumentarHumor(unaCantidad){
		humor += unaCantidad
	}
	method calmarse(unosMinutos){
		if(self.malHumor()){
			self.aumentarHumor(unosMinutos)
		}
	}
	method malHumor() {
		return (humor < 0)
	}
	method humor(){
		return humor
	}
}
object polino {
	method hacerOpinarDeChimentosA(unPanelista) {
		unPanelista.calmarse(5)
		unPanelista.tomarAgua()
	}
}
/* Teoricos
-Lizzy no podra opinar sobre deportes porque no entendera el mensaje que le envie fantino de elevar la voz al no tener un metodo que haga eso
-Polino si puede hacer opinar a todos los panelistas ya que entienden todos los mensajes que Polino envie
-No tiene sentido que sean polimorfiscos 
-Pagani y Toti son polimórficos para:
Ambos
-Lizzy, Pagani y Toti son polimórficos para:
Polino */