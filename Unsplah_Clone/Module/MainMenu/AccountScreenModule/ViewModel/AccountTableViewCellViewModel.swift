//
//  AccountTableViewCellViewModel.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 05/01/25..
//

import Foundation

protocol AccountTableViewCellViewModelProtocol {
    var photoImage: String { get }
    var author: String { get }
}
class AccountTableViewCellViewModel: AccountTableViewCellViewModelProtocol {
    
    let userLikeData: UserLikeData
    
    init(userLikeData: UserLikeData) {
        self.userLikeData = userLikeData
    }
    
    var photoImage: String {
        userLikeData.url
    }
    
    var author: String {
        userLikeData.author
    }
}
