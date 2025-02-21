/**
 
 Esto es una struct de swift
 
 */

import Foundation

public struct Subject:Describable,Hashable{
    var name:String
    var teacherName: String
    var level: SubjectLevel
    
    public init(name: String, teacherName: String, level: SubjectLevel) {
        self.name = name
        self.teacherName = teacherName
        self.level = level
    }
    
    public func isPassed(score:Double) -> Bool {
        return score >= minimumScore()
    }
    
    func minimumScore() -> Double {
        switch level {
        case .basic:
            return 60
        case .intermediate:
            return 70
        case .advanced:
            return 80
        }
    }
    
    public func describe() -> String{
        return """
        Materia: \(name)
        Profesor: \(teacherName)
        Puntaje mínimo para pasar: \(minimumScore())
        """
    }
}
