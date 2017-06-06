//
//  DependencyInjectionManager.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Swinject

class DependencyContainer {
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
        container.register(AnalyticsManager.self) { _ in
            AnalyticsManager()
            }.inObjectScope(.container)
    }
}
