//
//  SearchUserTableViewCellViewModel.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 12/01/25.
//

import SDWebImage
import UIKit

protocol SearchUserTableViewCellViewModelProtocol {
    var profileImage: String { get }
    var name: String { get }
    var userName: String { get }
}
class SearchUserTableViewCellViewModel: SearchUserTableViewCellViewModelProtocol {
    
    let searchUser: UserResult

    init(searchUser: UserResult) {
        self.searchUser = searchUser
    }
    
    var profileImage: String {
        self.searchUser.profileImage.large
    }
    
    var name: String {
        self.searchUser.name
    }
    
    var userName: String {
        self.searchUser.username
    }
}
