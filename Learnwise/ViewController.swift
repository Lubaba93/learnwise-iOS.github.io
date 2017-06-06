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
        if let dictionary = Bundle.main.infoDictionary {
            let appName = dictionary["APP_NAME"] as? String
            print("App name: \(String(describing: appName)))")

            let backend = (dictionary["BACKEND_URL"] as? String)?.replacingOccurrences(of: "\\", with: "")
            print("backend: \(String(describing: backend))")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
