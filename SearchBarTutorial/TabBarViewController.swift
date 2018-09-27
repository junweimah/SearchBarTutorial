//
//  TabBarViewController.swift
//  SearchBarTutorial
//
//  Created by Tandem on 14/03/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UISearchControllerDelegate, UISearchResultsUpdating, UISearchBarDelegate {

    var searchController : UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let modalVC =  mainStoryboard.instantiateViewController(withIdentifier: "SearchTableViewController_SBID")
        self.searchController = UISearchController(searchResultsController:  modalVC)
        
        self.searchController.searchResultsUpdater = self
        self.searchController.delegate = self
        self.searchController.searchBar.delegate = self
        
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.dimsBackgroundDuringPresentation = true
        
        self.navigationItem.titleView = searchController.searchBar
        
        self.definesPresentationContext = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
