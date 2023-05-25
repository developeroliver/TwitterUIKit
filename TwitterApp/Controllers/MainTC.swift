//
//  MainTC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class MainTC: UITabBarController {
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        let feedVC              = FeedVC()
        let exploreVC           = ExploreVC()
        let notificationsVC     = NotificationsVC()
        let conversationsVC     = ConversationsVC()
        
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feedVC)
        let nav2 = templateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: exploreVC)
        let nav3 = templateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notificationsVC)
        let nav4 = templateNavigationController(image: UIImage(named: "mail"), rootViewController: conversationsVC)
        
        viewControllers = [nav1, nav2, nav3, nav4]
    }
    
    
    // MARK: - FUNCTIONS
    private func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        
        return nav
    }

}
