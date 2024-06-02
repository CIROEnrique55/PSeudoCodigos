Algoritmo Productos
	
	Definir N, i Como Entero
	Definir nombres Como Cadena
	Definir precios Como Real
	Definir cantidades Como Entero
	
	// Solicita la cantidad de productos que va a almacenar
	Escribir "¿Cuántos productos desea ingresar?"
	Leer N
	
	// Declara e inicializa los arreglos
	Dimension  nombres[N]
	Dimension  precios[N]
	Dimension  cantidades[N]
	
	// Captura los datos de los productos
	Para i <- 1 Hasta N Hacer
		Escribir "Ingrese el nombre del producto ", i, ":"
		Leer nombres[i]
		
		Escribir "Ingrese el precio del producto ", i, ":"
		Leer precios[i]
		
		Escribir "Ingrese la cantidad del producto ", i, ":"
		Leer cantidades[i]
	Fin Para
	
	// Mostrar los datos almacenados
	Escribir "Productos ingresados:"
	
	Para i <- 1 Hasta N Hacer
		Escribir "Producto ", i, ":"
		Escribir "Nombre: ", nombres[i]
		Escribir "Precio: ", precios[i]
		Escribir "Cantidad: ", cantidades[i]
	Fin Para
	
FinAlgoritmo
