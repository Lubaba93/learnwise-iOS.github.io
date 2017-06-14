//
//  UIViewController.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit
import Box
extension UIViewController {

    /// Calls perform segue by encapsulating the data to be sent to other screen.
    /// Identify segue on the basis of the destination screen.
    ///
    /// - Parameter destination: enum to manage data model to be sent to other screens
    func performSegueWithIdentifier(destination: StoryboardDestination) {
        let segue: String

        switch destination {
        case .dummyScreen(model: _):
            segue = Segues.kDummySegue
        }
        performSegue(withIdentifier: segue, sender: Box(destination))
    }
}
