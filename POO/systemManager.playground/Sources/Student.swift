import Foundation


public class Student:Describable{
    var name:String
    var age:Int
    var email:String
    var subjects: [Subject]
    var scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func describe() -> String{
        var desc = """
        
        Nombre del estudiante: \(name)
        Edad del estudiante: \(age)
        Correo: \(email)
        Materias que está cursando:
        """
        
        for subject in subjects {
            desc += "\n\t\(subject.describe())"
        }
        
        desc += "\n-----------"
        
        return desc
    }
}
