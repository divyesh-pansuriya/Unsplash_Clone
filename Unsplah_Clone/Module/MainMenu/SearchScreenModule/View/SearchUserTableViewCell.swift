//
//  SearchUserTableViewCell.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 12/01/25.
//

import UIKit

class SearchUserTableViewCell: UITableViewCell {
    @IBOutlet private weak var profileImage: UIImageView! {
        didSet {
            ReusableComponent.addCircleShapeForImage(profileImage)
        }
    }
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var userName: UILabel!
    
    func configure(configurator: SearchUserTableViewCellViewModelProtocol) {
        self.profileImage.sd_setImage(with: URL(string: configurator.profileImage))
        self.name.text = configurator.name
        self.userName.text = configurator.userName
    }
}
