//
//  AppDelegate.swift
//  Graph
//
//  Created by Иван Захаров on 13.01.2023.
//

import UIKit
import Apollo

let apollo: ApolloClient = {
    let url = URL(string: "https://api.github.com/graphql")!
    let dip: DefaultInterceptorProvider = .init(store: .init())
    let rcnt: RequestChainNetworkTransport = .init(interceptorProvider: dip, endpointURL: url, additionalHeaders: ["Authorization": "bearer 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"])
    
    return ApolloClient(networkTransport: rcnt, store: .init())
}()

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

