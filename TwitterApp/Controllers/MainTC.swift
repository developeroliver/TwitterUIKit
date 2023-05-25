//
//  MainTC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class MainTC: UITabBarController {
    
    // MARK: - PROPERTIES
    private let actionButton: UIButton = {
        let button                  = UIButton(type: .system)
        button.tintColor            = .white
        button.backgroundColor      = UIColor(named: "TwitterColor")
        button.layer.cornerRadius   = 28
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: HELPERS
    @objc func actionButtonTapped() {
        print("DEBUG: Action Button Tapped")
    }
    
    
    // MARK: - FUNCTIONS
    private func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        
        return nav
    }
    

    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        configureTabBar()
        configureActionButton()
    }
    
    
    private func configureTabBar() {
        let feedVC              = FeedVC()
        let exploreVC           = ExploreVC()
        let notificationsVC     = NotificationsVC()
        let conversationsVC     = ConversationsVC()
        
        let nav1 = templateNavigationController(
            image: UIImage(named: "home_unselected"),
            rootViewController: feedVC)
        let nav2 = templateNavigationController(
            image: UIImage(named: "search_unselected"),
            rootViewController: exploreVC)
        let nav3 = templateNavigationController(
            image: UIImage(named: "like_unselected"),
            rootViewController: notificationsVC)
        let nav4 = templateNavigationController(
            image: UIImage(named: "mail"),
            rootViewController: conversationsVC)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    
    private func configureActionButton() {
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            actionButton.widthAnchor.constraint(equalToConstant: 56),
            actionButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
}
