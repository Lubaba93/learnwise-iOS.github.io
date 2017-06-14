//
//  LoadingView.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 04/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//

import UIKit
class LoadingView: BasicPlaceholderView {

    // MARK: Configuration
    override func setupView() {
        super.setupView()

        // set the frame
        self.frame = super.frame
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        activityIndicator.startAnimating()
        activityIndicator.center = super.center

        // set the default tag to the label (200)
        activityIndicator.tag = 200
        self.addSubview(activityIndicator)
    }
}
