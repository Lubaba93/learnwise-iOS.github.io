//
//  BaseRouterViewController.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit
import Box

class BaseRouterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// Manages pop operation
    ///
    /// - Parameters:
    ///   - viewController: the view controller that is to be removed from view
    ///   - animated: boolean value to set animation
    /// - Returns: returns the popped controller
    func pop(viewController: UIViewController, animated: Bool) -> UIViewController {
        return (viewController.navigationController?.popViewController(animated: animated))!
    }

    /// Override prepareForSegue
    ///
    /// - Parameters:
    ///   - segue: Performs transition of screens
    ///   - sender: source of the navigation event
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? StoryboardDependencies,
            let dependencies = sender as? Box<StoryboardDestination> {
            destinationViewController.assignDependencies(dependencies: dependencies)
        }
    }
}
