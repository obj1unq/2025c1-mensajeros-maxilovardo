object paquete{
	var pagado = true
	var mensajero = neo
	var destinoEntrega = puenteBrooklyn

	method pagado(_pagado){
		pagado = _pagado
	}

	method puedeSerEntregado(){
		return pagado && mensajero.puedeEntregar(destinoEntrega)
	}

	method mensajero(_mensajero){
		mensajero = _mensajero
	}

	method destinoEntrega(_destinoEntrega){
		destinoEntrega = _destinoEntrega
	}
}

object chuckNorris {
	const puedeLlamar = true
	const peso = 900

	method peso(){
		return peso
	}

	method puedeLlamar(){
		return puedeLlamar
	}

	method puedeEntregar(destino){
		destino.puedeIr(self)
	}
}

object neo {
	var puedeLlamar = true
	const peso = 0

	method peso(){
		return peso
	}

	method puedeLlamar(){
		return puedeLlamar
	}

	method puedeLlamar(_puedeLlamar){
		puedeLlamar = _puedeLlamar
	}

	method puedeEntregar(destino){
		destino.puedeIr(self)
	}
}

object lincolnHawk {
	const puedeLlamar = false
	var peso = 0
	var vehiculo = bicicleta

	method puedeLlamar(){
		return puedeLlamar
	}

	method vehiculo(_vehiculo){
		vehiculo  = _vehiculo
	}

	method peso(_peso){
		peso = _peso + vehiculo.peso()
	}

	method puedeEntregar(destino){
		destino.puedeIr(self)
	}
}

object bicicleta {
	const peso = 10

	method peso(){
		return peso
	}
}

object camion {
	const peso = 500
	const pesoAcoplado = 500
	var cantAcoplado = 0

	method cantAcoplado(_cantAcoplado){
		cantAcoplado = _cantAcoplado
	}

	method peso(){
		return peso + (pesoAcoplado * cantAcoplado)
	}
}

object puenteBrooklyn {
	method puedeIr(mensajero){
		return mensajero.peso() < 1000
	}
}

object matrix {
	method puedeIr(mensajero){
		return mensajero.puedeLlamar()
	}
}