//
//  CGFloat.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//
import UIKit

extension CGFloat {

    /// Return the device width
    ///
    /// - Returns: device width in CGFloat
    static func deviceWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }


    /// Return the device height
    ///
    /// - Returns: device height in CGFloat
    static func deviceHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
}
