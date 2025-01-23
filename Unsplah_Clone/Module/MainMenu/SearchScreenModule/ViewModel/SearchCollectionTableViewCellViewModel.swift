//
//  SearchCollectionTableViewCellViewModel.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 12/01/25.
//

import Foundation

protocol SearchCollectionTableViewCellViewModelProtocol {
    var image: String { get }
    var title: String { get }
}
class SearchCollectionTableViewCellViewModel: SearchCollectionTableViewCellViewModelProtocol {
    let searchPhotoCollection: CollectionResult

    init(searchPhotoCollection: CollectionResult) {
        self.searchPhotoCollection = searchPhotoCollection
    }
    
    var image: String {
        searchPhotoCollection.coverPhoto.urls.small
    }
    
    var title: String {
        searchPhotoCollection.title
    }
}
