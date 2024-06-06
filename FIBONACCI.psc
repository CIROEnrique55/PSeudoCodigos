Algoritmo FIBONACCI
	Definir n, i, a, b, c Como Entero
	Escribir 'ingrese el numero de terminos de la serie'
	leer n
	
	Si n <= 0 Entonces
		escribir 'el numero de termios debe ser mayoir a cero'
	
	SiNo
		a<-0
		b<-1
		Escribir 'Serie de fibonacci'
		Escribir a
		si n > 1 Entonces
			escribir b
		FinSi
		
		para i<-3 hasta n Hacer
			c<-a+b
			Escribir c
			a<-b
			b<-c
		FinPara
	Fin Si
FinAlgoritmo
