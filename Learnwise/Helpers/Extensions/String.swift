//
//  String.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation

enum EmailError: Error {
    case emptyValue
    case invalidEmail
    case invalidRegex
}

extension String {

    /// Validate email
    ///
    /// - Returns: boolean value suggesting the email is valid or not
    /// - Throws: error of type EmailError
    func isValidEmail() throws -> Bool {
        if self.isEmpty {
            throw EmailError.emptyValue
        }

        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"

        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = self as NSString
            let results = regex.matches(in: self, range: NSRange(location: 0, length: nsString.length))

            if results.count == 0 {
                throw EmailError.invalidEmail
            }

        } catch {
            throw EmailError.invalidRegex
        }
        return true
    }
}
