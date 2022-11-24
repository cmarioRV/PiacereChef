import PRPersistenceInterface
import PRCore
import PRDomainModels
import Swinject
import CoreData

public final class PersistenceModule: PersistenceModuleInterface {
    public var moduleAssembly: ModuleAssembly
    private var resolver: Resolver?
    
    public init(assembly: ModuleAssembly?) {
        if let assembly = assembly {
            self.moduleAssembly = assembly
        } else {
            self.moduleAssembly = PersistenceAssembly()
        }
        
        self.moduleAssembly.delegate = self
    }
    
    public func getUserSession() -> UserSession? {
        let userSessionFetch: NSFetchRequest<UserSessionEntity> = UserSessionEntity.fetchRequest()
        do {
            let results = try resolver?.resolve(CoreDataStackable.self)?.managedContext.fetch(userSessionFetch)
            return results?.first?.toDomainModel()
        } catch let error {
            print(error)
        }
        
        return nil
    }
    
    public func saveUserSession(_ userSession: UserSession) {
        let coreDataStack = resolver?.resolve(CoreDataStackable.self)
        let managedContext = coreDataStack?.managedContext
        
        let userSessionEntity = UserSessionEntity(context: managedContext!)
        userSessionEntity.name = userSession.name
        userSessionEntity.email = userSession.email
        
        let remoteSessionEntity = RemoteSessionEntity(context: managedContext!)
        remoteSessionEntity.token = userSession.remoteSession.token
        
        userSessionEntity.remoteSession = remoteSessionEntity
        
        resolver?.resolve(CoreDataStackable.self)?.saveContext()
    }
    
    public func loadedAssemblies(resolver: Resolver) {
        self.resolver = resolver
    }
}
