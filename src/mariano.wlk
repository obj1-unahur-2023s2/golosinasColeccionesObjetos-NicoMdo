import golosinas.*



object mariano {
	const golosinasCompradas = []
	
	method golosinasCompradas() = golosinasCompradas
	
	method comprar(unaGolosina){
		golosinasCompradas.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		golosinasCompradas.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas() = golosinasCompradas.size()
	
	method tieneLaGolosina(unaGolosina){
		return golosinasCompradas.contains(unaGolosina)
	}
	
	method probarGolosinas(){
		golosinasCompradas.forEach( {golosina => golosina.recibirMordisco() } )
	}
	
	method hayGolosinaSinTACC(){
		return golosinasCompradas.any( { golosina =>  golosina.esLibreDeGluten() })
	}
	
	
	method golosinaMasCara(){
		return golosinasCompradas.max({ g => g.precio() })
	}
	
	method golosinasDeSabor(unSabor){
		return golosinasCompradas.filter({g => g.sabor() == unSabor})
		
	}
	method buscarGolosinas(closure){
		return golosinasCompradas.filter({g => g.peso() >= 5})
	}
	
}
