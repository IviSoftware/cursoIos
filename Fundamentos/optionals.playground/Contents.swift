import UIKit


/**
 Tenemos varias formas de validar un nil (Es como un opcional de typescript)
 */
var intOptional:Int? = nil

//Una constante nunca puede ser nil, por lo que usamos esa regla a nuestro favor
if let intValue=intOptional{
    print(intValue)
}

var secondNil:String? = nil
secondNil = "Hello"
//Forzamos, pero si no tiene nada va a dar error
print(secondNil!)


//Ejercio: funcion que rebide dos optionals de tipo Int y los suma

func sumOpt (a:Int?,b:Int?) -> String{
    if let aValue = a,let bValue = b{
        let total = aValue + bValue
        return "La suma de ambos valores es: \(total)"
    }
    
    return "No tengo datos suficientes para sumar"
}

let valueA = sumOpt(a: 1, b: 2)
let valueB = sumOpt(a: 1, b: nil)

print(valueA)
print(valueB)

//También se puede resolver con guard que evalua si la condición no se cumple
func sumOptTwo(n1:Int?,n2:Int?) -> String{
    guard let valueN1 = n1, let valueN2 = n2 else{
        return "No tengo datos suficientes guard"
    }
    
    let total = n1! + n2!
    return "El total de la suma metodo guard es \(total)"
}

let valueC = sumOptTwo(n1: 1, n2: nil)
print(valueC)
