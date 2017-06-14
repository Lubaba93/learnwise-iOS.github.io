//
//  StoryboardDependencies.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 09/06/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Box
import Foundation

protocol StoryboardDependencies {
    func assignDependencies(dependencies: Box<StoryboardDestination>)
}
