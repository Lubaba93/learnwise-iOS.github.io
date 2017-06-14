//
//  EmptyStateView.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 04/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//

import UIKit

class EmptyStateView: BasicPlaceholderView {

    // lazy initialisation of UILabel
    lazy var label: UILabel = {
        let label = UILabel()
        // set text color
        label.textColor = .lightGray
        // set alignment
        label.textAlignment = .center
        // set default text to label
        label.text = "No results found"
        return label
    }()

    // MARK: Configuration
    override func setupView() {
        super.setupView()
        // Set teh frame
        self.frame = super.frame
        self.center = super.center
        let frame = CGRect(x: 0, y: 0, width: super.frame.width, height: 30)
        label.frame = frame
        // Set tag to a default value(100)
        label.tag = 100
        label.center = self.center
        // add label to the empty state view
        self.addSubview(label)
    }
}
