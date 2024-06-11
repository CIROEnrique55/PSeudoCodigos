Proceso GestionPedidos_CIRO
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
    Definir repeti Como Entero
	Definir i Como Entero
	Definir N Como Entero
	
	Escribir '¿Cuántas veces desea repetir el programa?'
	Leer repeti
	
	Dimension nombreCliente[repeti]
	Dimension fechaHora[repeti]

	Para i <- 1 Hasta repeti Hacer
		pagoValido <- Falso
		
		Escribir '              -----ALMACENES DE GALLETAS-----'
		Escribir '                      ---DULCE SOL---'
		Escribir 'Calle Sueños Colonia Esperanza Ciudad de México, C.P. 06700'
		Escribir ''
		Escribir 'Ingrese el nombre del cliente:'
		Leer nombreCliente[repeti]
		Escribir 'Ingrese la fecha y hora de la venta (dia/mes/año-Hora:Minutos):'
		Leer fechaHora[repeti]
		Escribir 'Ingrese el número de cajas solicitadas:'
		Leer numCajas
		
		costoPorCaja <- 50.00
        totalAPagar <- numCajas * costoPorCaja
        
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
        Escribir '¿efectivo o tarjeta?'
        Leer metodo_pago
		
		Mientras No pagoValido Hacer
            Si metodo_pago = 'efectivo' Entonces
                Escribir '              -----EFECTIVO-----'
                Escribir ''
                Escribir 'Ingrese la cantidad del pago:'
                Leer pago
                Si pago < totalAPagar Entonces
                    Escribir 'Falta dinero'
                    Escribir 'Por favor, vuelva a realizar la operación'
                SiNo
                    cambio <- pago - totalAPagar
                    Escribir 'Cambio: $', cambio
                    pagoValido <- Verdadero
                FinSi
            SiNo
                Escribir '             -----TARJETA-----'
                Escribir ''
                Escribir 'Ingrese el número de su tarjeta:'
                Leer tarjeta_num
                Escribir 'Ingrese CVV:'
                Leer CVV
                Escribir 'Ingrese el nombre del banco:'
                Leer banco
                pagoValido <- Verdadero
            FinSi
        FinMientras
		
		Escribir 'Fecha y hora de venta: ', fechaHora[i]
        Escribir leyendaDescuento
        Escribir 'Nombre del cliente: ', nombreCliente[i]
        Si metodo_pago = 'tarjeta' Entonces
            Escribir 'Número de tarjeta ', banco, ':', tarjeta_num
            Escribir 'CVV de la tarjeta ', banco, ':', CVV
        FinSi
        Escribir ''
        Escribir 'Operación Realizada con Exito!'
        Escribir '----------------------------------------'
    FinPara
FinProceso