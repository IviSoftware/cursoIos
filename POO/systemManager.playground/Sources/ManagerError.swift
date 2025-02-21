import Foundation


public enum ManagerError:Error,LocalizedError{
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentLimitReachedError(max: Int)
    
    public var errorDescription: String? {
        switch self {
        case .studentNotAddedError:
            return "Student not added"
        case .subjectNotAssignedError:
            return "Subject not assigned"
        case .reportNotFoundError:
            return "Report not found"
        case .maxStudentLimitReachedError(max: let max):
            return "Maximum student limit reached (\(max))"
        }
    }
}
