//
//  NetworkManager.swift
//  Learnwise
//
//  Created by vikash kumar on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Alamofire

class NetworkManager: NetworkManagerProtocol {

    /// Network call to fetch results for a given url. Manage success and failure cases
    ///
    /// - Parameters:
    ///   - url: url
    ///   - completion: Closure which either returns success or failure cases.
    func get(url: String, completion: @escaping (Result<[String: Any], Error>) -> ()) {
        completion(Result.success([:]))
    }

    /// Network call to send data to a given url.
    ///
    /// - Parameters:
    ///   - url: url
    ///   - completion: Closure which either returns success or failure casaes.
    func post(url: String, parameters: [String: Any], completion: @escaping (Result<[String: Any], Error>) ->()) {
        completion(Result.success([:]))
    }
}
