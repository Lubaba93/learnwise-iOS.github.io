//
//  AssetUtility.swift
//  Tesco_GHS_IOS
//
//  Created by Lubaba Hasnain on 07/04/17.
//  Copyright © 2017 Tesco.com All Rights Reserved
//
import UIKit

enum AssetUtilityError: Error {
    case invalidFile
    case invalidJson
}

class AssetUtility {

    /// Reads and returns contents from a file
    ///
    /// - Parameter filename: name of the file
    /// - Returns: file contents in dictionary format
    /// - Throws: AssetUtilityError Exception
    func getFileContents(from filename: String) throws -> [String: Any] {
        guard let file = Bundle.main.path(forResource: filename, ofType: ".json") else {
            throw AssetUtilityError.invalidFile
        }
        var jsonData = [String: Any]()
        do {
            jsonData = try convertFileContents(jsonFile: file)
        } catch {
            throw AssetUtilityError.invalidJson
        }
        return jsonData
    }

    /// onverts file contents from NSData format to dictionary format
    ///
    /// - Parameter jsonFile: name of the file
    /// - Returns: file contents in dictionary format
    /// - Throws: AssetUtilityError Exception
    func convertFileContents(jsonFile: String) throws -> [String: Any] {
        let content = try Data(contentsOf: URL.init(fileURLWithPath: jsonFile))
         // Use try-catch
        guard let jsonData = try? JSONSerialization.jsonObject(with: content, options: []) as? [String: Any] else {
            throw AssetUtilityError.invalidJson
        }
        return jsonData ?? [:]
    }
}
