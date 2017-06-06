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
    }

    /// Register Logger class
    func registerLogger() {
        container.register(Logger.self) { _ in
            Logger()
        }.inObjectScope(.container)
    }
}
