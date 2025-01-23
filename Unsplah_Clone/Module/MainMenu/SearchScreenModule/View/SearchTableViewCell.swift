//
//  SearchTableViewCell.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 15/01/25
//

import SDWebImage
import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet private weak var searchImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configure(configurator: SearchTableViewCellViewModelProtocol) {
        self.searchImage.sd_setImage(with: URL(string: configurator.image))
        self.nameLabel.text = configurator.name
    }
}
