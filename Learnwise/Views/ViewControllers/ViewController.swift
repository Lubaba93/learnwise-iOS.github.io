//
//  ViewController.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var log: LoggingManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        log = container?.resolve(LoggingManager.self)
        testForJenkins()
    }

    func testForJenkins() {
        log?.warning(message: "May Day!")
        log?.debug(message: "Not visible!")
    }
}
