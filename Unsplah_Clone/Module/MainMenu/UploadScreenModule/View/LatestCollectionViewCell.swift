//
//  LatestCollectionViewCell.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 5/10/23.
//

import SDWebImage
import UIKit

class LatestCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageView: UIImageView! {
        didSet {
            ReusableComponent.addRadiusForView(self.imageView)
        }
    }
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    
    func configure(configurator: LatestCollectionCellViewModelProtocol) {
        self.imageView.sd_setImage(with: URL(string: configurator.imageView))
        self.titleLabel.text = configurator.title
        self.authorLabel.text = configurator.author
    }
}
