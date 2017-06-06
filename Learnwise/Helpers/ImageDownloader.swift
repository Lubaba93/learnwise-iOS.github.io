//
//  ImageLoader.swift
//  Learnwise
//
//  Created by Lubaba Hasnain on 06/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Kingfisher

protocol ImageDownloader {}

extension ImageDownloader {

    func clearCache() {
        KingfisherManager.shared.cache.clearMemoryCache()
        KingfisherManager.shared.cache.clearDiskCache()
    }

    func setImage(for imageview: UIImageView, with url: URL) {
        imageview.kf.setImage(with: url,
                              placeholder: nil,
                              options: [.transition(ImageTransition.fade(1))],
                              progressBlock: { receivedSize, totalSize in
//                                log?.info(message: "\(receivedSize)/\(totalSize)")
        },
                              completionHandler: { image, error, cacheType, imageURL in
//                                log?.info(message:"Finished")
        })
    }
}
