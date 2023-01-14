//
//  AppDelegate.swift
//  Graph
//
//  Created by Иван Захаров on 13.01.2023.
//

import UIKit
import Apollo

let apollo: ApolloClient = {
    let configuration = URLSessionConfiguration.default
    
    configuration.httpAdditionalHeaders = ["Authorization": "bearer f6d9b896de9e332731ead8728239b3ca8e41fa91"]
    
    let url = URL(string: "https://api.github.com/graphql")!
    let dip: DefaultInterceptorProvider = .init(store: .init())
    let av: RequestChainNetworkTransport = .init(interceptorProvider: dip, endpointURL: url, additionalHeaders: ["Authorization": "bearer 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"])
    
    return ApolloClient(networkTransport: av, store: .init())
}()

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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

