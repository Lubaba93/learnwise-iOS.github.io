//
//  NetworkManager.swift
//  Learnwise
//
//  Created by vikash kumar on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Alamofire

// Enum to manage the success and failure cases during network integration
enum Result<U, T> {
    case Success(U)
    case Failure(T)
}

// Enum to manage error encountered during network integration
enum NetworkError: Error {
    case error(String?)
}

protocol NetworkManagerProtocol {
    func get(endPoint: String, completion: @escaping (Result<[String: Any], Error>) -> ())
}

class NetworkManager: NetworkManagerProtocol {
    
    /**
     Calls Alalmofire to fetch auto suggestion results for a given url.
     Manages success and failure cases
     */
    func get(endPoint: String, completion: @escaping (Result<[String: Any], Error>) -> ()) {
        
    }
}

