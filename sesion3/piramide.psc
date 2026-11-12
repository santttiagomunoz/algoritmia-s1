Algoritmo PiramideCoordenadas
    Definir n, fila, col, anchoBase Como Entero
    
    Escribir "Escribe la altura de la pirámide: "
    Leer n
    
    anchoBase <- 2 * n - 1
    
    Para fila <- 1 Hasta n Hacer
        Para col <- 1 Hasta anchoBase Hacer
            // Si la columna está dentro del rango simétrico alrededor del centro 'n'
            Si col >= (n - fila + 1) Y col <= (n + fila - 1) Entonces
                Escribir Sin Saltar "*"
            SiNo
                Escribir Sin Saltar " "
            FinSi
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo