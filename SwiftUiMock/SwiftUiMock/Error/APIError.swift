//
//  APIError.swift
//  SwiftUiMock
//
//  Created by naseem on 22/09/2021.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
            case .decodingError:
                return "Failed to decode the object from the server"
                
            case .errorCode(let code):
                return "\(code) - something wrong"
            case .unknown:
                return "The error is unknown"
        }
    }
}
