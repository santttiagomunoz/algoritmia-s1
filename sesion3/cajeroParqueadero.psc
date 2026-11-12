Algoritmo CajeroParqueaderoRepetir
    Definir total, valorr Como Real
    Definir carrosAtendidos Como Entero
    
    total <- 0
    carrosAtendidos <- 0
    
    Repetir
        Escribir "Valor cobrado (0 para cerrar caja): "
        Leer valorr
        
        // Solo sumamos y contamos si el valor no es cero (para no alterar contadores con el centinela de salida)
        Si valorr > 0 Entonces
            total <- total + valorr
            carrosAtendidos <- carrosAtendidos + 1
        SiNo
            Si valorr < 0 Entonces
                Escribir "Aviso: No se permiten valores negativos."
            FinSi
        FinSi
    Hasta Que valorr = 0
    
    Escribir "----------------------------------"
    Escribir "Carros atendidos: ", carrosAtendidos
    Escribir "Valor total recaudado: $", total
FinAlgoritmo