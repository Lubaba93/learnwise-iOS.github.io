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
    
    func configureAnalytics() {
        Fabric.with([Crashlytics.self])
        
    }
    
    
}
