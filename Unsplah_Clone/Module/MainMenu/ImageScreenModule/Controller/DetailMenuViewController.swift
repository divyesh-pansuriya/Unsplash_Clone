//
//  DetailMenuViewController.swift
//  Unsplah_Clone
//
//  Created by Divyesh Pansuriya on 5/13/23.
//

import Firebase
import Hero
import SDWebImage
import UIKit

class DetailMenuViewController: UIViewController {
    @IBOutlet private weak var detailImage: UIImageView! {
        didSet {
            self.detailImage.sd_setImage(with: URL(string: dataSource?.photoImageSmall ?? ""))
            self.detailImage.heroID = dataSource?.photoImageSmall
        }
    }
    
    @IBOutlet private weak var heartButton: UIButton!
    @IBOutlet private weak var collectionButton: UIButton!
    @IBOutlet private weak var authorButton: UIButton! {
        didSet {
            self.authorButton.setTitle(dataSource?.author, for: .normal)
        }
    }
    let detailViewModel = DetailMenuViewModel()
    var dataSource: MainMenuTableViewFirstViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = dataSource?.author
    }
    @IBAction private func dismissButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction private func isHeartClicked(_ sender: UIButton) {
        if Auth.auth().currentUser == nil {
            performSegue(withIdentifier: "isLogIn", sender: nil)
        } else if heartButton.isSelected {
            print("second")
            heartButton.isSelected = !heartButton.isSelected
        } else {
            print("third")
            detailViewModel.addUrlToServer(url: dataSource?.photoImageSmall ?? "not thing stored", author: dataSource?.author ?? "no author")
            heartButton.setImage(UIImage(named: "heart"), for: .selected)
            heartButton.setImage(UIImage(named: "heartFill"), for: .selected)
            heartButton.setImage(UIImage(named: "heartFill"), for: [.selected, .highlighted])
            heartButton.isSelected = !heartButton.isSelected
        }
    }
    @IBAction private func isCollectionClicked(_ sender: UIButton) {
        if Auth.auth().currentUser != nil {
            detailViewModel.addCollectionToServer(url: dataSource?.photoImageSmall ?? "not thing stored", author: dataSource?.author ?? "no author")
            self.present(ReusableComponent.alertMessage(title: "Collection Added", message: "This Photo is Added to your Collection"), animated: true)
        } else {
            performSegue(withIdentifier: "isLogIn", sender: nil)
        }
    }
    @IBAction private func downloadImage(_ sender: UIButton) {
        detailViewModel.downloadImages(url: dataSource?.photoImageRegular ?? "")
        self.present(ReusableComponent.alertMessage(title: "Download Complete", message: "Photo is downloaded to your photo library"), animated: true)
    }
    @IBAction private func shareLink(_ sender: UIBarButtonItem) {
        if let linkData = dataSource?.photoImageRegular {
            let controller = UIActivityViewController(activityItems: [linkData], applicationActivities: nil)
            self.present(controller, animated: true, completion: nil)
        }
    }
    @IBAction private func handlePan(sender: UIPanGestureRecognizer) {
        detailViewModel.heroTouchImage(sender: sender, viewController: self, image: detailImage)
    }
    @IBAction private func toAuthorPage(_ sender: UIButton) {
        guard let authorDetailViewController = storyboard?.instantiateViewController(identifier: "AuthorDetailViewController") as? AuthorDetailViewController else { return }
        self.navigationController?.pushViewController(authorDetailViewController, animated: true)
    }
    @IBAction private func toInfoPage(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let detailInfoViewController = storyBoard.instantiateViewController(identifier: "DetailInfoViewController") as? DetailInfoViewController else { return }
        detailInfoViewController.id = dataSource?.id
    }
}
