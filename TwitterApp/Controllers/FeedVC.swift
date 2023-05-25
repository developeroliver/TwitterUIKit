//
//  FeedVC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class FeedVC: UIViewController {

    // MARK: - PROPERTIES
    private let imageView: UIImageView = {
        let imageView           = UIImageView()
        imageView.image         = UIImage(named: "twitter_logo_blue")
        imageView.contentMode   = .scaleAspectFit
        
        return imageView
    }()
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        navigationItem.titleView = imageView
    }
}
