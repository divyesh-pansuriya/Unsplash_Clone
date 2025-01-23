//
//  AccountTableViewCollectionCell.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 05/01/25.
//

import SDWebImage
import UIKit

class AccountTableViewCollectionCell: UITableViewCell {
    @IBOutlet private weak var photoImage: UIImageView! {
        didSet {
            ReusableComponent.addRadiusForImage(self.photoImage)
        }
    }
    @IBOutlet private weak var author: UILabel!
    
    func configure(photoImage: String, author: String) {
        self.photoImage.sd_setImage(with: URL(string: photoImage))
        self.author.text = author
    }
}
