class ChevroletCorsa {
	var color
	
	method capacidad(){
		return 4
	}
	
	method velocidadMaxima(){
		return 150
	}
	
	method indicarColor(colorIndicado){
		color = colorIndicado
	}
	
	method color(){return color}
	
	method peso(){
		return 1300
	}
}

class RenaultKwid{
	var tanqueAdicional
	
	method tieneTanqueAdicional(siono){
		tanqueAdicional = siono
	}
	
	method capacidad(){
		return if(tanqueAdicional){3}else {4}
	}
	
	method velocidadMaxima(){
		return if(tanqueAdicional){110}else{120}
	}
	
	method color(){
		return "azul"
	}
	
	method peso(){
		return if(tanqueAdicional){1200+150}else{1200}
	}
}

class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var peso
	var color
	
	method indicarCapacidad(cap){capacidad = cap}
	method capacidad(){return capacidad}
	
	method indicarVelocidad(vel){velocidadMaxima = vel}
	method velocidadMaxima(){return velocidadMaxima}
	
	method indicarPeso(pes){peso = pes}
	method peso(){return peso}
	
	method indicarColor(col){color = col}
	method color(){return color}
}
