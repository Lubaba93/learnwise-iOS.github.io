//
//  AnalyticsManager.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Crashlytics
import Fabric

class AnalyticsManager {
       static let analyticsInstance = AnalyticsManager()
    
    func configureAnalytics() {
        Fabric.with([Crashlytics.self])
        
    }
    
    /// Crashlytics in error mode
    ///
    /// - Parameter error: error to be reported
    func logError(error:Error) {
        Crashlytics.sharedInstance().recordError(error)
    }
    
    
    /// setUserEmail
    ///
    /// - Parameter email: user emailid
    func setUserEmail(email:String) {
        Crashlytics.sharedInstance().setUserEmail(email)
    }
    
    /// set user name
    ///
    /// - Parameter name: user name
    func userName(name:String) {
        Crashlytics.sharedInstance().setUserName(name)
    }
    
}
