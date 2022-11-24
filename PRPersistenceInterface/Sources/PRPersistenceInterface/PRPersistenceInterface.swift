import PRDomainModels
import PRCore

public protocol PersistenceModuleInterface: Module {
    func getUserSession() -> UserSession?
    func saveUserSession(_ userSession: UserSession)
}
