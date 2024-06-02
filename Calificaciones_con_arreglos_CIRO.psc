Algoritmo Calificaciones_con_arreglos_CIRO
	Definir calf, i Como Entero
	Definir promedio Como Real
	Definir suma_calificaciones Como Real
	
	Dimension calificaciones[15]
	Escribir 'Ingresa la cantidad de calificaciones a ingresar: '
	leer calf
	
	Para i <- 1 Hasta calf Hacer
		Escribir 'Ingresa la calificacion ', i, ': '
		leer calificaciones[i]
	FinPara
	
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
