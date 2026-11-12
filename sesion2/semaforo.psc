Algoritmo Semaforo
    Definir valor Como Entero
    
    Escribir "Ingresa el valor"
    Leer valor
    
    Si valor < 0 Entonces
        Escribir "Error"
    Sino Si valor == 0 Entonces
			Escribir "Rojo: agotado"
		Sino Si valor >= 1 Y valor <= 10 Entonces
				Escribir "Amarillo: pedir"
			Sino
				Escribir "Verde: todo bien"
			FinSi
		FinSi
	FinSi
FinAlgoritmo   