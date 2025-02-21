import UIKit

//Declarando un array de strings
var fruits: [String] = ["Manzana", "Piña"]
//Declarando uno vacio
var fruitsTwo = [String]()

 //Validar que un array no este vacio para poder acceder a sus elementos

if(!fruits.isEmpty){
    var firstElement = fruits[0]
    print(firstElement)
}

//agregar un nuevo elemento a la lista, lo agregara al ultimo
fruits.append("Naranja")
print(fruits)

//Agregar nuevo elemento en un indice que quieras, insert también funciona con los conjuntos

fruits.insert("Fresa", at: 1)
print(fruits)


//Podemos unir dos arrays
let moreFruits: [String] = ["Uva", "Mango"]
fruits.append(contentsOf: moreFruits)

//Podemos eliminar un elemento del array
fruits.remove(at: 0)
print("Array después de eliminar", fruits)

//Podemos saber si un string existe dentro de un array
let includesApple = fruits.contains("Manzana")

//Podemos eliminar todo o el ultimo elemento
fruits.removeLast()
fruits.removeAll()
