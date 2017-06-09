//
//  ErrorState.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 04/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//

import UIKit

class ErrorState: BasicPlaceholderView {

    // lazy initialisation of UILabel
    lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()

    // MARK: Configuartion
    override func setupView() {
        super.setupView()
        self.frame = super.frame
        self.center = super.center
        let frame = CGRect(x: 0, y: 0, width: super.frame.width, height: 30)
        label.frame = frame
        label.center = self.center
        self.addSubview(label)
    }

    /// Sets text for the error label
    ///
    /// - Parameter text: value to be set to error label
    func setTextToLabel(text: String) {
        label.text = text
    }
}
