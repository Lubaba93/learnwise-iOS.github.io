//
//  UserDefaultable.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation

protocol UserDefaultable {
    associatedtype UserDefaultKey: RawRepresentable
}

extension UserDefaultable where UserDefaultKey.RawValue == String {
    
    /// Set value to the User Defaults for a particular key
    ///
    /// - Parameters:
    ///   - value: Value to set to User Defaults
    ///   - key: Unique key for a given value
    static func set(_ value: Any, forKey key: UserDefaultKey) {
        let key = key.rawValue
        UserDefaults.standard.set(value, forKey: key)
    }
    
    /// Get value from User Defaults for a given key
    ///
    /// - Parameter key: Unique key for a given value
    /// - Returns: Value for the unique key
    static func value(forKey key: UserDefaultKey) -> Any? {
        let key = key.rawValue
        return UserDefaults.standard.value(forKey: key)
    }
}
