//
//  UserDefaults.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation

extension UserDefaults: UserDefaultable {

    /// Enum containing unique keys to set to User Defaults. Declared in UserDefalutable
    ///
    /// - isUserLoggedIn: Enum case whether the user is logged in
    enum UserDefaultKey: String {
        case isUserLoggedIn
    }
}
