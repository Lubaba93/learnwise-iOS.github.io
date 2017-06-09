//
//  BasicPlaceholderView.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 04/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//

import UIKit
class BasicPlaceholderView: UIView {
    var message: String?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    // MARK: Configuartion
    func setupView() {
        backgroundColor = .white
    }

}
