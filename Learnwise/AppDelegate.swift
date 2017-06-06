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
    var dependencyInjectionManager: DependencyInjectionManager!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Logger.sharedInstance.configureLogger()
        configureDependencyInjection()
        return true
    }

    func configureDependencyInjection() {
        dependencyInjectionManager = DependencyInjectionManager()
    }


}
