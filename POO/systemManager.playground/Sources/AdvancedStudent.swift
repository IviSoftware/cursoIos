import Foundation


public class AdvancedStudent:Student{
    
    var extraPoints:Int
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double],extraPoints:Int) {
        self.extraPoints=extraPoints
        super.init(name:name,age:age,email:email,subjects:subjects,scores:scores)
    }
    
    public override func describe() -> String{
        var desc = """
        Estudiante avanzado
        Nombre del estudiante: \(name)
        Edad del estudiante: \(age)
        Correo: \(email)
        Puntos extra: \(extraPoints)
        Materias que está cursando:
        """
        
        for subject in subjects {
            desc += "\n\t\(subject.describe())"
        }
        
        desc += "\n-----------"
        
        return desc
    }
}
