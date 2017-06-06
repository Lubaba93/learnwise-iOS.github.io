//
//  AppDelegate.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var dependencyContainer: DependencyContainer!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // configure dependency Injection
        configureDependencyInjection()
        // configure crashlytics
        container?.resolve(AnalyticsManager.self)?.configureAnalytics()
        // configure logger
        container?.resolve(Logger.self)?.configureLogger()

        return true
    }

    /// creates object for DependencyContainer class
    func configureDependencyInjection() {
        dependencyContainer = DependencyContainer()
    }

}
