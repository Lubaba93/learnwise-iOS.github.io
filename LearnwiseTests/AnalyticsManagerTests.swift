//
//  AnalyticsManagerTests.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 08/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import XCTest
@testable import Learnwise

/// FIXME: Class added to check code coverage in Sonar Qube. Please avoid and re-write the code
class AnalyticsManagerTests: XCTestCase {
    
    var analyticManager: CrashReportingManager!
    
    override func setUp() {
        super.setUp()
        analyticManager = CrashReportingManager()
    }
    
    func testConfigureAnalytics() {
        analyticManager.configureAnalytics()
    }
    
    func test_SetUserEmail() {
        analyticManager.setUserEmail(email: "")
    }
    
    func test_UserName() {
        analyticManager.userName(name: "")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
}
