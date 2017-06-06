//
//  AppDelegate.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, LoggerProtocol {
    var log: Logger?
    var window: UIWindow?
    var dependencyContainer: DependencyContainer!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // configure dependency Injection
        configureDependencyInjection()
        // configure logger
        log?.configureLogger()
        return true
    }

    /// creates object for DependencyContainer class
    func configureDependencyInjection() {
        dependencyContainer = DependencyContainer()
    }

}
