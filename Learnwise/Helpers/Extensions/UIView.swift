//
//  UIView.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Add zoom in animation to the view
    ///
    /// - Parameter duration: duration of the animation
    func fadeIn(withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = 1.0
        }
    }

    /// Add zoom out animation to the view
    ///
    /// - Parameter duration: duration of the animation
    func fadeOut(withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = 0
        }
    }

    /// Add zoom out animation to the view
    ///
    /// - Parameters:
    ///   - duration: duration of the animation
    ///   - delay: delay added to the animation
    func zoomOut(withDuration duration: TimeInterval, delay: TimeInterval) {
        self.transform = CGAffineTransform(scaleX: 0.01, y: 0.1)
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }

    /// Add zoom in animation to the view
    ///
    /// - Parameters:
    ///   - duration: duration of the animation
    ///   - delay: delay added to the animation
    func zoomIn(withDuration duration: TimeInterval, delay: TimeInterval) {
        self.transform = CGAffineTransform.identity
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.transform = CGAffineTransform(scaleX: 0.01, y: 0.1)
        }, completion: nil)
    }
}
