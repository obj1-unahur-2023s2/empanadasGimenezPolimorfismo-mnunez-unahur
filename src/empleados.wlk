object galvan {
	var property sueldo = 150000
	var totalDeuda = 0
	var totalDinero = 0
	
	method totalDeuda() = totalDeuda
	method gastar(importe) {
		totalDeuda += 0.max(importe - totalDinero)
		totalDinero = 0.max(totalDinero - importe)
	}
	
	method totalDinero() = totalDinero
	
	
	method cobrarSueldo() {
		totalDinero += 0.max(sueldo - totalDeuda)
		totalDeuda = 0.max(totalDeuda - sueldo)
	}
}


object baigorria {
	var cantidadEmpanadasVendidas = 0
	const comisionPorEmpanadaVendida = 150
	var totalCobrado = 0
	
	method cantidadEmpanadasVendidas() = cantidadEmpanadasVendidas
	method comisionPorEmpanadaVendida() = comisionPorEmpanadaVendida
	
	
	method sueldo() = cantidadEmpanadasVendidas * comisionPorEmpanadaVendida

	method venderEmpanadas(cantidad) {
			cantidadEmpanadasVendidas += cantidad
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	
	method totalCobrado() = totalCobrado
	
		
}
