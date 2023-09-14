const sabores = ["frutilla", "chocolate", "naranja","vainilla"]

object bombon {
	var peso = 15
	
	method peso() = peso
	method precio() = 5
	method sabor() = sabores.get(0)
	method esLibreDeGluten() = true
	method recibirMordisco(){
		peso = 0.max((peso * 0.8) - 1)
	}
}

object alfajor {
	var peso = 300
	
	method peso() = peso
	method precio() = 12
	method sabor() = sabores.get(1)
	method esLibreDeGluten() = false
	method recibirMordisco(){
		peso = 0.max(peso * 0.8)
	}
}

object caramelo {
	var peso = 4
	
	method peso() = peso
	method precio() = 1
	method sabor() = sabores.get(0)
	method esLibreDeGluten() = true
	method recibirModisco(){
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method peso() = peso
	method precio() = 2
	method sabor() = sabores.get(2)
	method esLibreDeGluten() = true
	method recibirMordisco() {
		peso = 2.max(peso * 0.9)
	}
}

object oblea {
	var peso = 250
	
	method peso() = peso
	method precio() = 5
	method sabor() = sabores.get(3)
	method esLibreDeGluten() = false
	method recibirMordisco(){
		if (peso > 70){
			peso = peso * 0.5		
		}
		else{
			peso = peso * 0.75
		}
	}
}

object chocolatin {
	var peso = 100
	const pesoInicial = peso
	
	method peso() = peso
	method precio() = 0.50 * pesoInicial
	method sabor() = sabores.get(1)
	method esLibreDeGluten() = false
	method recibirMordida(){
		peso = 0.max(peso - 2)
	}
}

object golosinaBaniada {
	var property golosinaBase = bombon
	
	method peso() = golosinaBase.peso() + 4 
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method esLibreDegluten() = golosinaBase.esLibreDeGluten()
	method recibirMordida(){
		
	}
}

object pastillaTutti {
	const peso = 5
	var property esLibreDeGluten = false
	const losSabores = (sabores.size() - 1)
	var numeroDeSabor = 0
	var sabor = sabores.get(numeroDeSabor)
	
	method sabores() = sabores
	method sabor() = sabor
	method peso() = peso
	method precio(){
		if (esLibreDeGluten){
			return 7
		}
		else{
			return 10
		}
	}
	
	method recibirMordida(){
		numeroDeSabor = (numeroDeSabor + 1) % losSabores
		sabor = sabores.get(numeroDeSabor)
	}
}


