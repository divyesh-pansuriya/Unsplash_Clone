//
//  StringColor.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 13/01/25.
//

import UIKit

enum StringColor {
    static func changeColor(textField: UITextField, text: String, color: UIColor) {
        textField.attributedPlaceholder = NSAttributedString(string: text,
                                                             attributes: [NSAttributedString.Key.foregroundColor: color])
    }
}
