//
//  ImageUtility.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Kingfisher

protocol ImageUtility {
    var palceholder: UIImage? { get set }
}

extension ImageUtility {

    /// clear all caches
    func clearCache() {
        KingfisherManager.shared.cache.clearMemoryCache()
        KingfisherManager.shared.cache.clearDiskCache()
    }

    /// Set image to the given imageview
    ///
    /// - Parameters:
    ///   - imageview: An UIImageView for setting the iamge
    ///   - url: url of the image
    func setImage(for imageview: UIImageView, with url: URL) {
        imageview.kf.setImage(with: url,
                              placeholder: palceholder,
                              options: [.transition(ImageTransition.fade(1))],
                              progressBlock: { receivedSize, totalSize in
//                                log?.info(message: "\(receivedSize)/\(totalSize)")
        },
                              completionHandler: { image, error, cacheType, imageURL in
//                                log?.info(message:"Finished")
        })
    }
}
