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
    var dependenciesManager: DependenciesManager!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // configure dependency Injection
        configureDependencyInjection()
        // configure crashlytics
        container?.resolve(CrashReportingManager.self)?.configureAnalytics()
        // configure logger
        container?.resolve(LoggingManager.self)?.configureLogger()
        return true
    }

    /// creates object for DependencyContainer class
    func configureDependencyInjection() {
        dependenciesManager = DependenciesManager()
    }

}
