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

    /// Tells the delegate that the launch process is almost done and the app is almost ready to run.
    ///
    /// - Parameters:
    ///   - application:  singleton app object
    ///   - launchOptions: A dictionary indicating the reason the app was launched
    /// - Returns: false if the app cannot handle the URL resource or continue a user activity, otherwise        return true
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // configure dependency Injection
        configureDependencyInjection()
        // configure crashlytics
        container?.resolve(CrashReportingManager.self)?.configureAnalytics()
        // configure logger
        container?.resolve(LoggingManager.self)?.configureLogger()
        // configure Firebase Analytics
        container?.resolve(EventTrackingManager.self)?.configureEventTrackingManager()

        return true
    }

    /// creates object for DependencyContainer class
    func configureDependencyInjection() {
        dependenciesManager = DependenciesManager()
    }

}
