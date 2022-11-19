//
//  Configuration.swift
//  PiacereChef
//
//  Created by Mario Rúa on 19/11/22.
//

import Foundation

import Foundation

enum Configuration {
    enum Error: Swift.Error {
        case missingKey, invalidValue
    }

    static func value<T>(for key: String) throws -> T where T: LosslessStringConvertible {
        guard let object = Bundle.main.object(forInfoDictionaryKey:key) else {
            throw Error.missingKey
        }

        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
}

enum API {
    static var baseURL: URL {
        return try! URL(string: "https://" + Configuration.value(for: "API_BASE_URL"))!
    }
}

enum ENVIRONMENT {
    enum API {
        static var baseURL: URL {
            return try! URL(string: "https://" + Configuration.value(for: "API_BASE_URL"))!
        }
    }
    
    static var appName: String {
        return try! Configuration.value(for: "API_BASE_URL")
    }
}
