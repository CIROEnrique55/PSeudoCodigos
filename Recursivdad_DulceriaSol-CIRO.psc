Proceso GestionPedidos
    Definir nombreCliente Como Caracter
    Definir fechaHora Como Caracter
    Definir numCajas Como Entero
    Definir costoPorCaja Como Real
    Definir totalAPagar Como Real
    Definir descuento Como Real
    Definir leyendaDescuento Como Caracter
    Definir pago Como Real
    Definir cambio Como Real
    Definir metodo_pago Como Caracter
    Definir tarjeta_num Como Caracter
    Definir CVV Como Entero
    Definir banco Como Caracter
    Definir pagoValido Como Logico
	
    pagoValido <- Falso
	
    Escribir '           -----ALMACENES DE GALLETAS-----'
	Escribir '                   ---DULCE SOL---'
	Escribir ''
    Escribir 'Ingrese el nombre del cliente:'
    Leer nombreCliente
    Escribir 'Ingrese la fecha y hora de la venta (dia/mes/a�o):'
    Leer fechaHora
    Escribir 'Ingrese el n�mero de cajas solicitadas:'
    Leer numCajas
	
    // Establecer costo por caja
    costoPorCaja <- 50.00
    totalAPagar <- numCajas * costoPorCaja
	
    // Calcular descuentos y leyenda correspondiente
    Si numCajas >= 1 Y numCajas <= 30 Entonces
        descuento <- 0.00
        leyendaDescuento <- 'Sin descuento'
    Sino Si numCajas >= 31 Y numCajas <= 80 Entonces
			descuento <- 0.15
			leyendaDescuento <- 'Descuento del 15%'
		Sino
			descuento <- 0.20
			leyendaDescuento <- 'Descuento del 20%'
		FinSi
	FinSi

	totalAPagar <- totalAPagar * (1 - descuento)
	Escribir 'Total a pagar: $', totalAPagar
	Escribir '�Efectivo o tarjeta?'
	Leer metodo_pago
	
	Mientras No pagoValido Hacer
		Si metodo_pago = 'efectivo' Entonces
			Escribir '              -----EFECTIVO-----'
			Escribir ''
			Escribir 'Ingrese la cantidad del pago:'
			Leer pago
			Si pago < totalAPagar Entonces
				Escribir 'Falta dinero'
				Escribir 'Por favor, vuelva a realizar la operaci�n'
			SiNo
				cambio <- pago - totalAPagar
				Escribir 'Cambio: $', cambio
				pagoValido <- Verdadero
			FinSi
		SiNo
			Escribir '             -----TARJETA-----'
			Escribir ''
			Escribir 'Ingrese el n�mero de su tarjeta:'
			Leer tarjeta_num
			Escribir 'Ingrese CVV:'
			Leer CVV
			Escribir 'Ingrese el nombre del banco:'
			Leer banco
			pagoValido <- Verdadero
		FinSi
	FinMientras
	
	Escribir 'Fecha y hora de venta: ', fechaHora
	Escribir leyendaDescuento
	Escribir 'Datos del cliente: ', nombreCliente
	Si metodo_pago = 'tarjeta' Entonces
		Escribir 'N�mero de tarjeta ', banco, ':', tarjeta_num
		Escribir 'CVV de la tarjeta: ', banco, ':', CVV
	FinSi
	
FinProceso