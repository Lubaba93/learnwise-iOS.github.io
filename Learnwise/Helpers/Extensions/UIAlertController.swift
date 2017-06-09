//
//  UIAlertController.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

extension UIAlertController {
    func show(title: String, message: String, completion: @escaping () -> ()) {
        self.title = title
        self.message = message
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            completion()
        }
        addAction(cancelAction)
        addAction(okAction)
    }
}
