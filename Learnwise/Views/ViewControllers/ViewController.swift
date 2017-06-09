//
//  ViewController.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testForJenkins()
    }

    func testForJenkins() {
        container?.resolve(Logger.self)?.log?.warning("May Day!")
        container?.resolve(Logger.self)?.log?.debug("Not visible!")
    }
}
