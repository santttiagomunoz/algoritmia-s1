Algoritmo FacturaRestauranteDetallada
    Definir precios, subtotales Como Real
    Definir cantidades Como Entero
    Definir subtotal, impuesto, propina, total Como Real
    Definir contador, i Como Entero
    Definir continuar Como Caracter
    
    contador <- 0
    subtotal <- 0
    continuar <- "S"
    
    // Asignamos un límite máximo de ítems para el ejemplo (puedes ajustarlo)
    Dimension precios[50]
    Dimension cantidades[50]
    Dimension subtotales[50]
    
    Escribir "=== SISTEMA DE FACTURACIÓN RESTAURANTE ==="
    
    Mientras continuar = "S" O continuar = "s" Hacer
        contador <- contador + 1
        
        Escribir "Ingrese el precio del producto ", contador, ":"
        Leer precios[contador]
        
        Escribir "Ingrese la cantidad:"
        Leer cantidades[contador]
        
        subtotales[contador] <- precios[contador] * cantidades[contador]
        subtotal <- subtotal + subtotales[contador]
        
        Escribir "¿Desea agregar otro producto? (S/N):"
        Leer continuar
    FinMientras
    
    // Cálculos finales usando funciones
    impuesto <- CalcularPorcentaje(subtotal, 8)
    propina <- CalcularPorcentaje(subtotal, 10)
    total <- subtotal + impuesto + propina
    
    // Impresión del Ticket Desglosado
    Escribir "----------------------------------"
    Escribir "          TICKET DE VENTA         "
    Escribir "----------------------------------"
    Para i <- 1 Hasta contador Hacer
        Escribir "Ítem ", i, ": ", cantidades[i], " un. x $", precios[i], " = $", subtotales[i]
    FinPara
    Escribir "----------------------------------"
    Escribir "Subtotal:        $", subtotal
    Escribir "Impuesto (8%):   $", impuesto
    Escribir "Propina (10%):   $", propina
    Escribir "=================================="
    Escribir "TOTAL A PAGAR:   $", total
    Escribir "=================================="
FinAlgoritmo

Funcion resultado <- CalcularPorcentaje(base, porcentaje)
    Definir resultado Como Real
    resultado <- base * porcentaje / 100
FinFuncion