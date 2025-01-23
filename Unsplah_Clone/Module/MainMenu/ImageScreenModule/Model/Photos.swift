//
//  Photos.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 5/13/23.
//

import Foundation

struct Photos: Decodable {
    let id: String
    let urls: Urls
    let user: User
}
