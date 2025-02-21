import UIKit

//UNION: une dos conjuntos, pero sin repetir elementos

let mathStudents = Set(["Juan","Madai","Pedro","Gabriel","Ivi"])
let programingStudents = Set(["Madai","Freddy","Tim","Ivi"])
let allStudents = mathStudents.union(programingStudents)
print(allStudents)

//Interseccion: Los elementos que existen en ambos conjuntos

let bothClass = mathStudents.intersection(programingStudents)
print(bothClass)

//subtracting : los elementos que no están en en el otro conjunto

let rest = mathStudents.subtracting(programingStudents)
let restTwo = programingStudents.subtracting(mathStudents)
print("Los alumnos que estan en math pero no en programación")
print(rest)
print("Los alumnos que estan en programación pero no en math")
print(restTwo)


// Diferencia simetrica: Selecciona los que solo existen en Arreglo A y no en Arreglo B y los que existen en Arreglo B y no en Arreglo B

let symetric = mathStudents.symmetricDifference(programingStudents)
print(symetric)
