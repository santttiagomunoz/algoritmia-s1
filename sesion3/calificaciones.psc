Algoritmo CalificacionesOrdenadas
    Definir notas, suma, promedio, aux Como Real
    Definir aprobados, i, j, n Como Entero
    
    n <- 5
    Dimension notas[n]
    
    notas[1] <- 3.5
    notas[2] <- 2.8
    notas[3] <- 4.9
    notas[4] <- 3.0
    notas[5] <- 4.2
    
    // 1. Mostrar notas originales y acumular suma/aprobados con Mientras
    suma <- 0
    aprobados <- 0
    i <- 1
    
    Mientras i <= n Hacer
        Escribir "Nota de estudiante ", i, ": ", notas[i]
        suma <- suma + notas[i]
        Si notas[i] >= 3.0 Entonces
            aprobados <- aprobados + 1
        FinSi
        i <- i + 1
    FinMientras
    
    // 2. Ordenar de menor a mayor (Método Burbuja)
    Para i <- 1 Hasta n - 1 Hacer
        Para j <- 1 Hasta n - i Hacer
            Si notas[j] > notas[j + 1] Entonces
                aux <- notas[j]
                notas[j] <- notas[j + 1]
                notas[j + 1] <- aux
            FinSi
        FinPara
    FinPara
    
    promedio <- suma / n
    
    Escribir "--- Resultados ---"
    Escribir "Promedio es: ", promedio
    Escribir "Aprobaron: ", aprobados
    Escribir "Nota más alta: ", notas[n], " | Nota más baja: ", notas[1]
    
    Si (n - aprobados) > 0 Entonces
        Escribir "Hay ", (n - aprobados), " estudiante(s) en refuerzo"
    FinSi
FinAlgoritmo