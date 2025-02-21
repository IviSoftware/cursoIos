import UIKit
/**
 En este ejercicio, buscamos desarrollar una función que simule una batalla entre dos Pokémon. La función recibirá dos diccionarios, cada uno representando un Pokémon con sus puntos de vida (PB) y puntos de ataque (PA). La batalla dará inicio con el primer Pokémon atacando, y concluirá cuando uno de los dos Pokémon no tenga más puntos de vida. La función entregará como resultado un mensaje indicando al ganador.

 ¿Cómo aprovechar las variables y constantes en el desarrollo?
 Un detalle crucial en Swift es que los parámetros dentro de las funciones son constantes. Para manipular los datos de los Pokémon, necesitaremos crear copias de estos parámetros y trabajar con variables.
 */

let pokeSilicon = [
    "PB": 400,
    "PA":80
]


let pokeIntel = [
    "PB": 200,
    "PA":10
]

func isPar(number:Int) -> Bool{
    if(number % 2 == 0){
        return true
    }else{
        return false
    }
}

func fightPokemon(pokemon1:[String:Int], pokemon2:[String:Int]) -> String{
    
    guard let pb1 = pokemon1["PB"], let pb2 = pokemon2["PB"],
          let pa1 = pokemon1["PA"], let pa2 = pokemon2["PA"]
    else {
        return "Necesitas pasarle los puntos de vida y ataque a todos los pokemones"
    }
    
    var pokemon1Data = pokemon1
    var pokemon2Data = pokemon2
    
    var shift = 0;
    while (pokemon1Data["PB"]! > 0 && pokemon2Data["PB"]! > 0){
        if(isPar(number:shift)){
            pokemon2Data["PB"] = pokemon2Data["PB"]! - pa1
            shift+=1;
        }else{
            pokemon1Data["PB"] = pokemon1Data["PB"]! - pa2
            shift+=1;
        }
    }
    
    if(pokemon1Data["PB"]! > 0){
        return "El pokemon 1 ha sido el ganador"
    }else{
        return "El pokemon 2 ha sido el ganador"
    }
}


print(fightPokemon(pokemon1:pokeSilicon,pokemon2:pokeIntel))
