//
//  LoggerProtocol.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

protocol LoggerProtocol {
    var log: Logger? { get set }
}

extension LoggerProtocol {
    var log: Logger? {
        return (container?.resolve(Logger.self))!
    }
}
