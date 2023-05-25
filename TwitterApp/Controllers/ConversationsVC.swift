//
//  ConversationsVC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class ConversationsVC: UIViewController {

    // MARK: - PROPERTIES
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground 
        configure()
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        navigationItem.title = "Messages"
    }
}
