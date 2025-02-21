import UIKit

/*
 La diferencia entre una clase y un struct es que la clase si puede heredar
 */

let math = Subject(name:"Maths",teacherName:"Freddy Vega",level: .intermediate)
let japanese = Subject(name:"Japanese",teacherName:"Asuna Yuki",level: .basic)


var student1 = Student(name: "Ivi", age: 24, email: "ivi@g.com", subjects: [math,japanese], scores: [80,90])
var student2 = AdvancedStudent(name: "Ivi", age: 24, email: "ivi@g.com", subjects: [math], scores: [80],extraPoints:10)

print(student1.describe())

print(student2.describe())
