//
//  SearchUser.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 12/01/25.
//

import Foundation

struct SearchUser: Decodable {
    let results: [UserResult]
}
struct UserResult: Decodable {
    let username: String
    let name: String
    let profileImage: ProfileImage
    
    enum CodingKeys: String, CodingKey {
        case username, name
        case profileImage = "profile_image"
    }
}
struct ProfileImage: Decodable {
    let large: String
}
