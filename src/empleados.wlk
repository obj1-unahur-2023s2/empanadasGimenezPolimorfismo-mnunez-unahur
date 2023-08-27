object galvan {
	var sueldo = 150000
	var totalDeuda = 0
	var totalDinero = 0
	
	// manejo de deuda
	method totalDeuda() = totalDeuda
	method gastar(importe) {
		totalDeuda += 0.max(importe - totalDinero)
		totalDinero = 0.max(totalDinero - importe)
	}
	
	method totalDinero() = totalDinero
	
	
	// manejo de sueldo
	method sueldo() = sueldo
	method cobrarSueldo() {
		totalDinero += 0.max(sueldo - totalDeuda)
		totalDeuda = 0.max(totalDeuda - sueldo)
	}

	
}


object baigorria {
	var cantidadEmpanadasVendidas = 0
	var comisionPorEmpanadaVendida = 150
	var totalCobrado = 0
	
	method cantidadEmpanadasVendidas() = cantidadEmpanadasVendidas
	method comisionPorEmpanadaVendida() = comisionPorEmpanadaVendida
	
	
	method sueldo() = cantidadEmpanadasVendidas * comisionPorEmpanadaVendida

	method venderEmplanadas(cantidad) {
			cantidadEmpanadasVendidas += cantidad
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	
	method totalCobrado() = totalCobrado
	
		
}
