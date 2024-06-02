Algoritmo nultiplicaciones
	Escribir '¿Cuntas veces quieres repetir?'
	Leer numer
	n<-1
	mientras n<=numer hacer 
		escribir 'tabla del ',n
		x<-1;
		Mientras x<=10 hacer 
			Escribir n, ' x ', x, ' = ', n*x
			x<- x+1
		FinMientras
		n<-n+1
	FinMientras
FinAlgoritmo
