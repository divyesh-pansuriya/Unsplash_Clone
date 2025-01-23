//
//  SearchTableViewCellViewModel.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 15/01/25
//

import UIKit

protocol SearchTableViewCellViewModelProtocol {
    var image: String { get }
    var name: String { get }
}

class SearchTableViewCellViewModel: SearchTableViewCellViewModelProtocol {

    let searchPhoto: PhotoResult

    init(searchPhoto: PhotoResult) {
        self.searchPhoto = searchPhoto
    }
    
    var image: String {
        searchPhoto.urls?.small ?? ""
    }
    var name: String {
        searchPhoto.user.name ?? ""
    }
}
