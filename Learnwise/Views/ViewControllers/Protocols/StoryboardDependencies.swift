//
//  StoryboardDependencies.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 03/05/17.
//  Copyright © 2017 Nineleaps. All rights reserved.
//

import Box
import Foundation

protocol StoryboardDependencies {
    func assignDependencies(dependencies: Box<StoryboardDestination>)
}
