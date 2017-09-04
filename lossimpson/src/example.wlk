object centralAtomica {
	var cantidadDeVarillasDeUranio
  	method produccionEnergetica(){
  		return 0.1 * cantidadDeVarillasDeUranio
  	}
  	method contaminacion(){
  		return cantidadDeVarillasDeUranio > 20
  	}
  	method cantidadDeVarillasDeUranio(unaCantidad) {
  		cantidadDeVarillasDeUranio = unaCantidad
  	}
  	

}

object centralDeCarbon{
	var ciudad = springfield
	var capacidadEnToneladas

	method capacidadEnToneladas(unaCapacidad){
		capacidadEnToneladas = unaCapacidad
	}
	method produccionEnergetica(){
		return 0.5 + capacidadEnToneladas * ciudad.riquezaDeSuelo()
	}
	method contaminacion(){
		return true
	}
	
}

object centralEolica {
	var turbinas = #{turbina}
	method produccionEnergetica(){
		return turbinas.sum({turbina => turbina.produccionEnergetica()})
	}
	method contaminacion(){
		return false
	}
}
object turbina{
	var ciudad = springfield
	method produccionEnergetica(){
		return 0.2*ciudad.vientos()
	}
}
object springfield {
	var centralesDeEnergia = #{centralAtomica,centralDeCarbon,centralEolica}
	var vientos = 10
	var riquezaDeSuelo = 0.9
	var produccionNecesaria
	method produccionNecesaria(unaCantidad){
		produccionNecesaria = unaCantidad
	}
	method necesidadesCubiertas(){
		return centralesDeEnergia.sum({central => central.produccionEnergetica()}) >= produccionNecesaria
	}
 	method centralesContaminantes(){
 		return centralesDeEnergia.filter({central => central.contaminacion()})
 	}
	method vientos(){
		return vientos
	}
	method riquezaDeSuelo(){
		return riquezaDeSuelo
	}
	method estaEnElHorno(){
		return self.sonTodasContaminantes()|| self.aportanMasDel50DeLoNecesario()
	}
	method sonTodasContaminantes(){
		return centralesDeEnergia.all({central => central.contaminacion()})
	}
	method aportanMasDel50DeLoNecesario(){
		return self.centralesContaminantes().sum({central => central.produccionEnergetica()}) >= produccionNecesaria/2
	}
		method laCentralQueMasProduce(){
		return return centralesDeEnergia.max({central => central.produccionEnergetica()})
	}
}
object albuquerque {
	var caudalRio = 150
	var centralDeEnergia = centralHidroelectrica
	method caudalRio(){
		return caudalRio
	}
	method laCentralQueMasProduce(){
		return centralDeEnergia
	}
	
}
object centralHidroelectrica{
	var ciudad = albuquerque
	method produccionEnergetica(){
		return 2 * ciudad.caudalRio()
	}
}
object region {
	var ciudades = #{springfield,albuquerque}
	method lasCentralesMasProductoras(){
		return ciudades.map({ ciudad => ciudad.laQueMasProduce()})
	}
}
