//
//  ResetViewController.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 10/01/25..
//

import UIKit

class ResetViewController: UIViewController {
    @IBOutlet private weak var resetButton: UIButton! {
        didSet {
            self.resetButton.layer.cornerRadius = 5
        }
    }
    @IBOutlet private weak var emailTextField: UITextField! {
        didSet {
            StringColor.changeColor(textField: emailTextField, text: "Email", color: .gray)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backItem?.backButtonTitle = "Login"
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = Color.realBlack.color
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.backItem?.backButtonTitle = "Login"
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = Color.realBlack.color
        self.navigationController?.navigationBar.isTranslucent = false
    }
}
