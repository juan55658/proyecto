productos = []

def registrar_producto():
    if len(productos) >= 10:
        print("Ya tienes 10 productos registrados. No puedes agregar más.")
        return

    print("\n--- Registrar Producto ---")
    nombre = input("Nombre del producto: ")
    cantidad = int(input("Cantidad: "))
    precio = float(input("Precio unitario: "))

    producto = {
        "nombre": nombre,
        "cantidad": cantidad,
        "precio": precio
    }

    productos.append(producto)
    print(f"Producto '{nombre}' registrado correctamente.")


def consultar_producto():
    print("\n--- Consultar Producto ---")
    nombre_buscar = input("Nombre del producto a buscar: ")

    encontrado = False
    for producto in productos:
        if producto["nombre"].lower() == nombre_buscar.lower():
            print(f"\nProducto encontrado:")
            print(f"Nombre: {producto['nombre']}")
            print(f"Cantidad: {producto['cantidad']}")
            print(f"Precio: ${producto['precio']}")
            encontrado = True
            break

    if not encontrado:
        print("Producto no encontrado.")


def calcular_valor_total():
    print("\n--- Valor Total del Inventario ---")

    if len(productos) == 0:
        print("No hay productos en el inventario.")
        return

    total = 0
    for producto in productos:
        valor_producto = producto["cantidad"] * producto["precio"]
        total = total + valor_producto

    print(f"El valor total del inventario es: ${total:.2f}")


def actualizar_precio():
    print("\n--- Actualizar Precio ---")
    nombre_buscar = input("Nombre del producto: ")

    encontrado = False
    for producto in productos:
        if producto["nombre"].lower() == nombre_buscar.lower():
            print(f"Precio actual: ${producto['precio']}")
            nuevo_precio = float(input("Nuevo precio: "))
            producto["precio"] = nuevo_precio
            print(f"Precio actualizado correctamente.")
            encontrado = True
            break

    if not encontrado:
        print("Producto no encontrado.")


def productos_bajo_umbral():
    print("\n--- Productos con Baja Cantidad ---")

    if len(productos) == 0:
        print("No hay productos en el inventario.")
        return

    umbral = int(input("Ingrese el umbral mínimo de cantidad: "))

    print(f"\nProductos con cantidad menor a {umbral}:")
    encontrados = False

    for producto in productos:
        if producto["cantidad"] < umbral:
            print(f"- {producto['nombre']}: {producto['cantidad']} unidades")
            encontrados = True

    if not encontrados:
        print("No hay productos por debajo del umbral.")


def mostrar_menu():
    print("SISTEMA DE INVENTARIO")
    print("1. Registrar producto")
    print("2. Consultar producto")
    print("3. Calcular valor total del inventario")
    print("4. Actualizar precio de producto")
    print("5. Mostrar productos con baja cantidad")
    print("6. Salir")

print("Bienvenido al Sistema de Inventario")

while True:
    mostrar_menu()
    opcion = input("Seleccione una opción: ")

    if opcion == "1":
        registrar_producto()
    elif opcion == "2":
        consultar_producto()
    elif opcion == "3":
        calcular_valor_total()
    elif opcion == "4":
        actualizar_precio()
    elif opcion == "5":
        productos_bajo_umbral()
    elif opcion == "6":
        print("Gracias por usar el sistema. ¡Hasta luego!")
        break
    else:
        print("Opción no válida. Intente nuevamente.")