//
//  ExploreVC.swift
//  TwitterApp
//
//  Created by olivier geiger on 25/05/2023.
//

import UIKit

class ExploreVC: UIViewController {
    
    // MARK: - PROPERTIES
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        let searchController                    = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder  = "Rechercher"
        navigationItem.titleView                = searchController.searchBar
        searchController.searchResultsUpdater   = self
        searchController.delegate               = self
        automaticallyAdjustsScrollViewInsets    = true
    }
    
}


extension ExploreVC: UISearchResultsUpdating, UISearchControllerDelegate{
    func updateSearchResults(for searchController: UISearchController) {
        print(123)
    }
}
