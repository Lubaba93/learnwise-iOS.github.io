//
//  DependenciesManager.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Swinject

class DependenciesManager {
    let container = Container()

    /// designated initialiser
    init() {
        injectDependencies()
        
    }

    /// Inject Dependencies
    func injectDependencies() {
        registerLogger()
        registerAnalyticsManager()
        registerDateFormatManager()
    }

    /// Register Logger class
    func registerLogger() {
        container.register(LoggingManager.self) { _ in
            LoggingManager()
        }.inObjectScope(.container)
    }

    /// Register CrashReportingManager class
    func registerAnalyticsManager() {
        container.register(CrashReportingManager.self) { _ in
            CrashReportingManager()
            }.inObjectScope(.container)
    }
    /// Register DateFormat manager class
    func registerDateFormatManager() {
        container.register(DateFormatManager.self) { _ in
            DateFormatManager()
            }.inObjectScope(.container)
    }
}
