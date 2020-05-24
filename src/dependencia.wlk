import Trafic.*
import otrosRodados.*

class Dependencia {
	var cantidadEmpleados
	const flota = []
	
	method cantidadEmpleados(cant){ cantidadEmpleados = cant}
	
	method agregarAFlota(rodado) { flota.add(rodado)}
	
	method quitarDeFLota(rodado) { flota.remove(rodado)}
	
	method pesoTotalFlota() { return flota.sum({rod => rod.peso()})}
	
	method estaBienEquipada() { 
		return flota.size()>=3 and flota.all({rod => rod.velocidadMaxima()>=100}	
		)
	}
	
	method capacidadTotalEnColor(color) {
		return flota.filter({rod => rod.color()==color}).sum({rod => rod.capacidad()})	
	}
	
	method colorDelRodadoMasRapido(){
		return flota.max({rod=>rod.velocidadMaxima()}).color()
	}
	
	method capacidadFaltante() { 
		return cantidadEmpleados - flota.sum({rod=>rod.capacidad()}) 
	}
	
	method esGrande(){
		return cantidadEmpleados >= 40 and flota.size() >= 5
	}
}
