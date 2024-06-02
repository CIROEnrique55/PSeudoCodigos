Algoritmo Calificaciones_con_arreglos_CIRO
	
	Definir calf, i Como Entero
	Definir promedio Como Real
	Definir suma_calificaciones Como Real
	
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

	
	Dimension calificaciones[15]
	Escribir 'Ingresa la cantidad de calificaciones a ingresar: '
	leer calf
	
	Para i <- 1 Hasta calf Hacer
		Escribir 'Ingresa la calificacion ', i, ': '
		leer calificaciones[i]
	FinPara
	
	Escribir nuevo_arreglo[l1]
	Escribir nuevo_arreglo[l2]
	Escribir nuevo_arreglo[l3]
	
	Escribir 'Las calificaciones ingresadas son: '
	Para i <- 1 Hasta calf Hacer
		Escribir 'Calificacion ', i, ': ', calificaciones[i]
	FinPara

	suma_calificaciones <- 0
	Para i <- 1 Hasta calf Hacer
		suma_calificaciones <- suma_calificaciones + calificaciones[i]
	FinPara

	promedio <- suma_calificaciones / calf
	
	Escribir 'El promedio de las calificaciones es: ', promedio
FinAlgoritmo
