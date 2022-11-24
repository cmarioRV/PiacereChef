//
//  AppDelegate.swift
//  PiacereChef
//
//  Created by Mario Rúa on 18/11/22.
//

import UIKit
import Swinject
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import PRPersistence

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let defaultContainer = Container()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let assemblies: [Assembly] = [PersistenceModule(assembly: nil).moduleAssembly]
        let assembler = Assembler(assemblies, container: defaultContainer)
        
        AppCenter.start(withAppSecret: "7d587f32-2ef2-404c-8b7f-7ca98e1b08e9", services:[
          Analytics.self,
          Crashes.self
        ])
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

