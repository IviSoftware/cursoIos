import Foundation

public protocol Manageable{

    func insertStudent(_ student: Student)
    func asignSubjectToStudent(subject: Subject, score: Double, student: Student)
    func generateStudentsReport()
    func getApprovedStudents() ->[Student]
    func getReprobedStudents() ->[Student]
    func getAverages() -> [Double]
    func getTotalAverage() -> Double
    func getCoursedSubjects() -> Set<Subject>
}


public class StudentsManager: Manageable{

    var students: [Student]
    
    public init(students: [Student]) {
        self.students = students
    }
    
    public func insertStudent(_ student: Student) {}
    
    public func asignSubjectToStudent(subject: Subject, score: Double, student: Student) {}
    
    public func generateStudentsReport() {}
    
    public func getApprovedStudents() -> [Student] {
        return []
    }
    
    public func getReprobedStudents() -> [Student] {
        return []
    }
    
    public func getAverages() -> [Double] {
        return []
    }
    
    public func getTotalAverage() -> Double {
        return 0
    }
    
    public func getCoursedSubjects() -> Set<Subject> {
        return Set<Subject>()
    }
}

