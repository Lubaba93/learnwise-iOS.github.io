//
//  EventTrackingManager.swift
//  Learnwise
//
//  Created by vikash kumar on 6/13/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Firebase
public typealias Properties = [String:Any]

class EventTrackingManager {

    /// configure Firebase
    func configureEventTrackingManager() {
        FIRApp.configure()
    }

    /// The events which you want to track in the firebase.
    ///
    /// - Parameters:
    ///   - eventName: name of the event which you trigger
    ///   - properties: the parameter which you want to pass while triggering an event
    func logEvent(eventName: String, properties: Properties?) {
       FIRAnalytics.logEvent(withName: eventName, parameters: properties)
    }
}
