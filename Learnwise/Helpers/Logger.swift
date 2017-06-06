//
//  Logger.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import SwiftyBeaver

class Logger {
    var log: SwiftyBeaver.Type? = nil

    /// Configure the logger with default properties
    func configureLogger() {
        log = SwiftyBeaver.self
        // log to Xcode Console
        let console = ConsoleDestination()
        // log to default swiftybeaver.log file
        let file = FileDestination()

        // use custom format and set console output to short time, log level & message
        console.format = "$DHH:mm:ss$d $L $M"
        console.useTerminalColors = true

        // add the destinations to SwiftyBeaver
        log?.addDestination(console)
        log?.addDestination(file)
    }

    /// Log in verbose mode
    ///
    /// - Parameter message: message to be logged to console
    func verbose(message: Any) {
        log?.verbose(message)
    }

    /// Log in debug mode
    ///
    /// - Parameter message: message to be logged to console
    func debug(message: Any) {
        log?.debug(message)
    }

    /// Log in info mode
    ///
    /// - Parameter message: message to be logged to console
    func info(message: Any) {
        log?.info(message)
    }

    /// Log in warning mode
    ///
    /// - Parameter message: message to be logged to console
    func warning(message: Any) {
        log?.warning(message)
    }

    /// Log in error mode
    ///
    /// - Parameter message: message to be logged to console
    func error(message: Any) {
        log?.error(message)
    }
}
