//
//  ParameterEncoder.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 15/01/25
//

import Foundation

typealias Parameters = [String: Any]

protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest,
                       with parameters: Parameters) throws
}
