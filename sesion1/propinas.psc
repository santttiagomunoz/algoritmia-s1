Algoritmo propina
	Definir cuenta, canPersonas, total Como Entero
	Escribir 'Escribe el total de la cuenta: '
	Leer cuenta
	Escribir 'Escribe la cantidad de personas: '
	Leer canPersonas
	Mientras cuenta<0 Hacer
		Escribir 'Ingrese un numero mayor o igual a 0: '
		Leer cuenta
	FinMientras
	Mientras canPersonas<0 Hacer
		Escribir 'Ingrese un numero de personas mayor o igual a 0: '
		Leer canPersonas
	FinMientras
	total <- (cuenta*0.1)+cuenta
	Si canPersonas==0 Entonces
		Escribir 'no hay nadie que pague la cuenta'
		Escribir 'cuenta ', cuenta
		Escribir 'total con propina', cuenta
		Escribir 'propina ', total-cuenta
	SiNo
		Escribir 'cuenta ', cuenta
		Escribir 'total con propina', total
		Escribir 'propina ', total-cuenta
	FinSi
FinAlgoritmo