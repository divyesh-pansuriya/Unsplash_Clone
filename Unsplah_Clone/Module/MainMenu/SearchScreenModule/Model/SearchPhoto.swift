//
//  SearchPhoto.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 15/01/25
//

import Foundation

struct SearchPhoto: Decodable {
    let results: [PhotoResult]
}

struct PhotoResult: Decodable {
    let urls: ResultUrl?
    let user: User
}

struct ResultUrl: Decodable {
    let small: String
}
