Algoritmo SistemaInventario

    Definir nombres Como Cadena
    Definir cantidades, numProductos Como Entero
    Definir precios Como Real
    Definir opcion Como Entero
    

    Dimension nombres[10]
    Dimension cantidades[10]
    Dimension precios[10]
    
    numProductos <- 0
    
    Escribir "Bienvenido al Sistema de Inventario"
    
    Repetir
        Escribir ""
        Escribir "========================================"
        Escribir "       SISTEMA DE INVENTARIO"
        Escribir "========================================"
        Escribir "1. Registrar producto"
        Escribir "2. Consultar producto"
        Escribir "3. Calcular valor total del inventario"
        Escribir "4. Actualizar precio de producto"
        Escribir "5. Mostrar productos con baja cantidad"
        Escribir "6. Salir"
        Escribir "========================================"
        Escribir Sin Saltar "Seleccione una opcion: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                Si numProductos >= 10 Entonces
                    Escribir "Ya tienes 10 productos registrados. No puedes agregar mas."
                SiNo
                    Escribir ""
                    Escribir "--- Registrar Producto ---"
                    Escribir "Nombre del producto:"
                    Leer nombres[numProductos + 1]
                    Escribir "Cantidad:"
                    Leer cantidades[numProductos + 1]
                    Escribir "Precio unitario:"
                    Leer precios[numProductos + 1]
                    
                    numProductos <- numProductos + 1
                    Escribir "Producto registrado correctamente."
                FinSi
                
            2:
                Definir nombreBuscar Como Cadena
                Definir encontrado Como Logico
                Definir i Como Entero
                
                Escribir ""
                Escribir "--- Consultar Producto ---"
                Escribir "Nombre del producto a buscar:"
                Leer nombreBuscar
                
                encontrado <- Falso
                Para i <- 1 Hasta numProductos Hacer
                    Si Minusculas(nombres[i]) = Minusculas(nombreBuscar) Entonces
                        Escribir ""
                        Escribir "Producto encontrado:"
                        Escribir "Nombre: ", nombres[i]
                        Escribir "Cantidad: ", cantidades[i]
                        Escribir "Precio: $", precios[i]
                        encontrado <- Verdadero
                        i <- numProductos
                    FinSi
                FinPara
                
                Si NO encontrado Entonces
                    Escribir "Producto no encontrado."
                FinSi
                
            3:
                Definir total, valorProducto Como Real
                Definir j Como Entero
                
                Escribir ""
                Escribir "--- Valor Total del Inventario ---"
                
                Si numProductos = 0 Entonces
                    Escribir "No hay productos en el inventario."
                SiNo
                    total <- 0
                    Para j <- 1 Hasta numProductos Hacer
                        valorProducto <- cantidades[j] * precios[j]
                        total <- total + valorProducto
                    FinPara
                    Escribir "El valor total del inventario es: $", total
                FinSi
                
            4:
                Definir nombreActualizar Como Cadena
                Definir nuevoPrecio Como Real
                Definir hallado Como Logico
                Definir k Como Entero
                
                Escribir ""
                Escribir "--- Actualizar Precio ---"
                Escribir "Nombre del producto:"
                Leer nombreActualizar
                
                hallado <- Falso
                Para k <- 1 Hasta numProductos Hacer
                    Si Minusculas(nombres[k]) = Minusculas(nombreActualizar) Entonces
                        Escribir "Precio actual: $", precios[k]
                        Escribir "Nuevo precio:"
                        Leer nuevoPrecio
                        precios[k] <- nuevoPrecio
                        Escribir "Precio actualizado correctamente."
                        hallado <- Verdadero
                        k <- numProductos
                    FinSi
                FinPara
                
                Si NO hallado Entonces
                    Escribir "Producto no encontrado."
                FinSi
                
            5:
                Definir umbral Como Entero
                Definir hayProductos Como Logico
                Definir m Como Entero
                
                Escribir ""
                Escribir "--- Productos con Baja Cantidad ---"
                
                Si numProductos = 0 Entonces
                    Escribir "No hay productos en el inventario."
                SiNo
                    Escribir "Ingrese el umbral minimo de cantidad:"
                    Leer umbral
                    
                    Escribir ""
                    Escribir "Productos con cantidad menor a ", umbral, ":"
                    hayProductos <- Falso
                    
                    Para m <- 1 Hasta numProductos Hacer
                        Si cantidades[m] < umbral Entonces
                            Escribir "- ", nombres[m], ": ", cantidades[m], " unidades"
                            hayProductos <- Verdadero
                        FinSi
                    FinPara
                    
                    Si NO hayProductos Entonces
                        Escribir "No hay productos por debajo del umbral."
                    FinSi
                FinSi
                
            6:
                Escribir "Gracias por usar el sistema. Hasta luego!"
                
            De Otro Modo:
                Escribir "Opcion no valida. Intente nuevamente."
        FinSegun
        
    Hasta Que opcion = 6
    
FinAlgoritmo