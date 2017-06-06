//
//  NetworkManagerProtocol.swift
//  Learnwise
//
//  Created by vikash kumar on 6/6/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

/// Enum to manage the success and failure cases during network integration
enum Result<U, T> {
    case success(U)
    case failure(T)
}

/// Enum to manage error encountered during network integration
enum NetworkError: Error {
    case error(String?)
}

protocol NetworkManagerProtocol {
    func get(url: String, completion: @escaping (Result<[String: Any], Error>) -> ())
    func post(url: String, parameters: [String: Any], completion: @escaping (Result<[String: Any], Error>) -> ())
}
