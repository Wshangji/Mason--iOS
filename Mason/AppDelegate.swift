//
//  AppDelegate.swift
//  Mason
//
//  Created by TongWY on 2021/11/2.
//

import UIKit
import Amplify
import AmplifyPlugins

struct quesList {
    static var ques1: String = "null"
    static var ques2: String = ""
    static var ques3: String = "null"
    static var ques4: String = "null"
    static var ques5: String = "null"
    static var ques6_1: String = "null"
    static var ques6_2: String = "null"
    static var ques7_1: String = "null"
    static var ques7_2: String = "null"
    static var ques7_3: String = "null"
    static var ques7_4: String = "null"
    static var ques8_1: String = "null"
    static var ques8_2: String = "null"
    static var ques8_3: String = "null"
    static var ques8_4: String = "null"
    static var ques8_5: String = "null"
    static var ques9_1: String = "null"
    static var ques9_2: String = "null"
    static var ques9_3: String = "null"
    static var ques9_4: String = "null"
    static var ques9_5: String = "null"
    static var judge: Int = 0
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.add(
                plugin: AWSDataStorePlugin(modelRegistration: AmplifyModels())
            )
            try Amplify.configure()
            print("Amplify configured with auth plugin")
        } catch {
            print("An error occurred setting up Amplify: \(error)")
        }
        
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

