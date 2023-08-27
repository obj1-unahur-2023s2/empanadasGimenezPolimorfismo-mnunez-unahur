import empleados.*

object gimenez {
	var fondo = 3000000
	
	method fondo() = fondo
	
	method pagarA(empleado) {
		fondo -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
}
