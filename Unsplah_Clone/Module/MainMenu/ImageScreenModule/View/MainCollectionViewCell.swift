//
//  MainCollectionViewCell.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 5/13/23.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var title: UILabel!
    
    func configure(title: String) {
        self.title.text = title
    }
}
