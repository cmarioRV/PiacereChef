import XCTest
import Swinject
@testable import PRPersistence
@testable import PRDomainModels

final class PRPersistenceModuleTests: XCTestCase {
    func testPersistenceModuleSaveUserSessionAndReturnsItSuccessfully() {
        let subject = PersistenceModule(assembly: FakePersistenceAssembly())
        
        let assemblies = [subject.moduleAssembly]
        let assembler = Assembler(assemblies, container: Container())
        
        let remoteSession = RemoteSession(token: UUID())
        let userSession = UserSession(name: "John Dow", email: "jow@email.com", remoteSession: remoteSession)
        subject.saveUserSession(userSession)
        
        let returnedUserSession = subject.getUserSession()
        
        XCTAssertNotNil(subject.getUserSession())
        XCTAssertEqual(returnedUserSession?.name, userSession.name)
        XCTAssertEqual(returnedUserSession?.email, userSession.email)
        XCTAssertEqual(returnedUserSession?.remoteSession, userSession.remoteSession)
    }
}
