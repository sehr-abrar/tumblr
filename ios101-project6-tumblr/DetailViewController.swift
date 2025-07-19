//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Sehr Abrar on 07/18/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post : Post!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var overviewTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Post Details"
        overviewTextView.text = post.caption.trimHTMLTags()
   
        navigationItem.largeTitleDisplayMode = .never
        // --------------
    
            if let bannerImage = post.photos.first {
                let url = bannerImage.originalSize.url
                Nuke.loadImage(with: url, into: bannerImageView)
                
        }
        
        bannerImageView.layer.borderWidth = 1.0
        bannerImageView.layer.borderColor = UIColor.gray.cgColor

        overviewTextView.font = UIFont.systemFont(ofSize: 16.0)
                overviewTextView.textColor = UIColor.darkGray
                overviewTextView.textAlignment = .center
                overviewTextView.backgroundColor = UIColor.clear
                
        bannerImageView.layer.cornerRadius = 10 
            bannerImageView.clipsToBounds = true
    }
    
}
  

    




