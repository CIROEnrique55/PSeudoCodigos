Algoritmo ARREGLOdeCIRO
	Escribir 'Escriba su nombre: '
	leer nom
	Escribir 'Escriba su edad: '
	leer ed
	Escribir 'Escriba su fecha de nacimiento: '
	leer fech
	Dimension nuevo_arreglo[3]
	nuevo_arreglo[1] <- nom
	nuevo_arreglo[2] <- ed
	nuevo_arreglo[3] <- fech
	Repetir
		Escribir 'Escribe un número entre 1 y 3'
		leer l1
		Si l1 < 1 o l1 > 3 Entonces
			Escribir 'Ese número no es válido. Inténtalo de nuevo.'
		Fin Si
	Hasta Que l1 >= 1 y l1 <= 3
	Repetir
		Escribir 'Dame un número entre 1 y 3'
		leer l2
		Si l2 < 1 o l2 > 3 Entonces
			Escribir 'Ese número no es válido. Inténtalo de nuevo.'
		Fin Si
	Hasta Que l2 >= 1 y l2 <= 3
	Repetir
		Escribir 'Dame un número entre 1 y 3'
		leer l3
		Si l3 < 1 o l3 > 3 Entonces
			Escribir 'Ese número no es válido. Inténtalo de nuevo.'
		Fin Si
	Hasta Que l3 >= 1 y l3 <= 3
	Escribir nuevo_arreglo[l1]
	Escribir nuevo_arreglo[l2]
	Escribir nuevo_arreglo[l3]
FinAlgoritmo