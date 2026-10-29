Algoritmo ValidarRegistro
Definir edad Como Entero
Definir respuesta Como Caracter
Escribir "Cuntos anios tienes?"
Leer edad
Escribir "Aceptas los terminos?"
Leer respuesta
respuesta <- Mayuscula(respuesta)
Si edad >= 14 Y respuesta = "S" Entonces
Escribir "Registro exitoso 
SiNO
Escribir "No puedes resgistrate"
FinSi
FinalAlgoritmo