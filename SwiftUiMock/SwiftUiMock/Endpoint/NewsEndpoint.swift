//
//  NewsEndpoint.swift
//  SwiftUiMock
//
//  Created by naseem on 21/09/2021.
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
}

enum NewsAPI {
    case getNews
}

extension NewsAPI: APIBuilder {
    
    var baseUrl: URL {
        switch self {
            case .getNews:
                return URL(string: "https://api.lil.software/news")!
        }
        
    }
    
    var path: String {
        return "/news"
        
    }
    
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
        
    }
    
    
}
