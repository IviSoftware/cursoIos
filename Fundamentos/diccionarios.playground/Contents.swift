import UIKit


//Basicamente son los tipicos objetos literales de javascript

var product: [String:Any] = [
    "id":1,
    "name":"iphone 15 pro",
    "price":100000,
    "stock":10,
    "cupon":true
]

//Para acceder a ellos, en ves de product.name es con []

let nameProduct = product["name"]
print(nameProduct!)


//Para cambiar un valor

product["stock"] = 1
product["price"] = 2000

print(product)

//para eliminar un elemento
product["cupon"] = nil

//Para agregar un elemento
product["score"] = 1

print(product)

/* TODO: Ejercicio
 Hacer una función que retorne la cantidad de habtiantes por pais en el formato: En (Pais) hay (cantidad) de habitantes. Si el diccionario no contiene la informaciónd e ese pais, debe retornar: No tengo datos suficientes para una respuesta exclarecedora.
 Recibirá el pais como parametro como String.
 
 Tip: Usar la funcion contains (diccionario.keys.contains).
 */
let habitantesPorPais: [String: Int] = [
    "Colombia": 48000000,
    "México": 120000000,
    "España": 46000000,
    "Francia": 67000000
]

func getHabitantesPorPais(pais: String) -> String {
    return habitantesPorPais.keys.contains(pais)
        ? "En \(pais) hay \(habitantesPorPais[pais] ?? 0) habitantes"
        : "No tengo datos suficientes para una respuesta exclarecedora."
}

print(getHabitantesPorPais(pais:"México"))
print(getHabitantesPorPais(pais: "Japon"))
print(getHabitantesPorPais(pais: "Francia"))
