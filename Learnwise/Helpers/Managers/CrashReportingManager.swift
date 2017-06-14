//
//  CrashReportingManager.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Fabric
import Crashlytics

class CrashReportingManager {

    /// configure Crashlytics
    func configureAnalytics() {
        Fabric.with([Crashlytics.self])
    }

    /// Log error to console
    ///
    /// - Parameter error: error to be logged
    func logError(error: Error) {
        Crashlytics.sharedInstance().recordError(error)
    }

    /// Handler to set user email
    ///
    /// - Parameter email: user emailid
    func setUserEmail(email: String) {
        Crashlytics.sharedInstance().setUserEmail(email)
    }

    /// Handler to set user name
    ///
    /// - Parameter name: user name
    func userName(name: String) {
        Crashlytics.sharedInstance().setUserName(name)
    }
}
