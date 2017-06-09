//
//  Constants.swift
//  Learnwise
//
//  Created by Puja Kumari on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

/// DI container
let container = (UIApplication.shared.delegate as? AppDelegate)?.dependenciesManager.container
/// Regex for email
let kRegexForEmail = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
