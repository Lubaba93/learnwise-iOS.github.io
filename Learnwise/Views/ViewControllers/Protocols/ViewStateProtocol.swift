//
//  ViewStateProtocol.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

protocol ViewStateProtocol: class {
    var stateManager: ViewStateManager? { get }

    var loadingView: UIView? { get }
    var errorView: UIView? { get }
    var emptyView: UIView? { get }

    var errorMessage: String? { get set }
    func transitionViewStates(state: ViewControllerStates, superview: UIView)
}

extension ViewStateProtocol {

    /// Creates state manager object which removes/adds different views for different states
    var stateManager: ViewStateManager? {
        return container?.resolve(ViewStateManager.self)
    }

    /// Creates loading view object
    var loadingView: UIView? {
        return LoadingView(frame: UIScreen.main.bounds)
    }

    /// Creates error view object
    var errorView: UIView? {
        let errorStateView = ErrorState(frame: UIScreen.main.bounds)
        errorStateView.setTextToLabel(text: errorMessage!)
        return errorStateView
    }

    /// Creates empty view object
    var emptyView: UIView? {
        return EmptyStateView(frame: UIScreen.main.bounds)
    }

    /// Manages and adds different states views on the basis of the state
    ///
    /// - Parameters:
    ///   - state: different states like loading, error, empty and default(content)
    ///   - superview: base view to add a state subview
    func transitionViewStates(state: ViewControllerStates, superview: UIView) {
        // error state, empty state & loading state
        switch state {
        case .loading:
            // calls state manager to add a laoding view
            stateManager?.addView(loadingView!,
                                  forState: ViewControllerStates.loading.rawValue,
                                  superview: superview)
            break
        case .error:
            // calls state manager to add an error view
            stateManager?.addView(errorView!,
                                  forState: ViewControllerStates.error.rawValue,
                                  superview: superview)

            break
        case .empty:
            // calls state manager to add an empty view
            stateManager?.addView(emptyView!,
                                  forState: ViewControllerStates.empty.rawValue,
                                  superview: superview)
            break
        default:
            // removes all the views for managing states
            removeAllViews()
            break
        }
    }

    /// Removes a view for a particular state
    ///
    /// - Parameter state: different states like loading, error, empty and default(content)
    func removeViewForState(state: ViewControllerStates) {
        // Calls the state manager object to remove view for a particular state
        stateManager?.removeViewForState(state.rawValue)
    }

    /// Removes all the views for managing states
    func removeAllViews() {
        // Calls the state manager object to remove all views for managing states
        stateManager?.removeAllViews()
    }
}
