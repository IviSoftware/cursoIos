import UIKit

//Imprimir del 1 al 10

for number in 1...10{
    print(number)
}


//Recorrer un array
let names = ["Madai","Ivan","Oscar"]
for name in names{
    print(name)
}


/* TODO: Ejercicio
 Escribe una funcion que ejecute un bucle que recorra una cadena de texto y cuente cuántas vocales contiene.
 
 Tip: Puedes usar este String "aeiouáéíóúAEIOUÁÉÍÓÚ" como variable para determinar las vocales en español.
 Puedes usar la funcion contains de los strings.
 */

let vowels = Set(["a", "e", "i", "o", "u"])

func countarVocales(texto: String) -> Int {
    var counter = 0
    for vowel in vowels {
        if (texto.lowercased().contains(vowel)){
            counter+=1
        }
    }
    return counter
}

print("las vocales en aeiouáéíóúAEIOUÁÉÍÓÚ son: \(countarVocales(texto:"aeiouáéíóúAEIOUÁÉÍÓÚ"))")
