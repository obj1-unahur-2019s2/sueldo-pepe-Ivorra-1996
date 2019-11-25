object pepe {
	var property categoria = "categoria"
	var property bonoPresentismo 
	var property bonoResultado 
	var property cantidadDeFaltas 
	
	
	method neto(){ 
		return if(categoria == "gerente"){15000}
		else if(categoria == "cadete"){20000}
		}
		
	//sueldo = neto + bono x presentismo + bono x resultados.
	method sueldo() {return  bonoPresentismo + bonoResultado + self.neto()}
	
	
	// bono por resultados.
	method porcentaje(){ return (10* self.neto()) /100}
	method montoFijo(){return 800}
	method nulo(){return 0}
	
	// bono por presentimo
	method normal(){
		return if(cantidadDeFaltas == 0){2000}
		else if(cantidadDeFaltas == 1){1000}
		else if (cantidadDeFaltas > 1){0}
	}
	method ajuste(){
		 if(cantidadDeFaltas == 0){bonoPresentismo = 100}
		else{bonoPresentismo = 0}
	}
	method demagogico(){
		 if(self.neto() < 18000){bonoPresentismo = 500}
		else{bonoPresentismo = 300}
	}
	
	}