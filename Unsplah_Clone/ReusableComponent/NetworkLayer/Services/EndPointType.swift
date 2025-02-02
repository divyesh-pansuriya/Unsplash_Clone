//
//  EndPointType.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 15/01/25
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}

extension EndPointType {
    var baseURL: URL {
        guard let url = URL(string: "https://api.unsplash.com/") else {
            fatalError("baseURL error")
        }
        return url
    }
    var httpMethod: HTTPMethod {
        .get
    }
    var task: HTTPTask {
        .request
    }
    var headers: HTTPHeaders? {
        nil
    }
}
