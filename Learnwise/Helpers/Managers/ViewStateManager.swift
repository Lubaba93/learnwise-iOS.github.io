//
//  ViewStateManager.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 04/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//

import UIKit

class ViewStateManager {
    var viewStore: [String: UIView] = [:]

    /**
     Returns the view for a given state
     
     - returns: UIView for a given state
     */
    public func viewForState(_ state: String) -> UIView? {
        return viewStore[state]
    }

    /**
     Associates a view for the given state
     */
    public func addView(_ view: UIView, forState state: String, superview: UIView) {
        viewStore[state] = view
        superview.addSubview(view)
    }

    /**
     Removes the view for the given state
     */
    public func removeViewForState(_ state: String) {
        viewStore[state]?.removeFromSuperview()
        viewStore[state] = nil
    }

    /**
     Hide all views
     */
    public func hideAllViews() {
        for (_, view) in self.viewStore {
            view.isHidden = true
        }
    }

    /**
     Remove all views
     */
    public func removeAllViews() {
        for (_, view) in self.viewStore {
            view.removeFromSuperview()
            viewStore = [:]
        }
    }
}
