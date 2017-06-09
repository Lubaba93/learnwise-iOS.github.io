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
    }

    /// Register Logger class
    func registerLogger() {
        container.register(Logger.self) { _ in
            Logger()
        }.inObjectScope(.container)
    }

    /// Register analytics manager class
    func registerAnalyticsManager() {
        container.register(CrashReportingManager.self) { _ in
            CrashReportingManager()
            }.inObjectScope(.container)
    }
}
