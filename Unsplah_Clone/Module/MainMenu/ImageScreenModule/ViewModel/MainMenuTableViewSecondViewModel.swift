//
//  MainMenuTableViewSecondViewModel.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 13/01/25.
//

import UIKit

protocol MainMenuTableViewSecondViewModelProtocol {
    var photoImage: UIImage { get }
    var photoSponsor: String { get }
    var author: String { get }
}

class MainMenuTableViewSecondViewModel: MainMenuTableViewSecondViewModelProtocol {
    
    var photoImage: UIImage {
        UIImage()
    }
    
    var photoSponsor: String {
        ""
    }
    
    var author: String {
        ""
    }
}
