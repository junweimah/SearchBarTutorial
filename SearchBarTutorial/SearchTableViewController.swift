//
//  SearchTableViewController.swift
//  SearchBarTutorial
//
//  Created by Tandem on 14/03/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchResultsUpdating,  UISearchControllerDelegate, UISearchBarDelegate {

    let allResults = ["Here's", "to", "the", "crazy", "ones.", "The", "misfits.", "The", "rebels.",
                      "The", "troublemakers.", "The", "round", "pegs", "in", "the", "square", "holes.",
                      "The", "ones", "who", "see", "things", "differently.", "They're", "not", "fond", "of",
                      "rules.", "And", "they", "have", "no", "respect", "for", "the", "status", "quo.", "You",
                      "can", "quote", "them,", "disagree", "with", "them,", "glorify", "or", "vilify", "them.",
                      "About", "the", "only", "thing", "you", "can't", "do", "is", "ignore", "them.", "Because",
                      "they", "change", "things.", "They", "push", "the", "human", "race", "forward.", "And",
                      "while", "some", "may", "see", "them", "as", "the", "crazy", "ones,", "we", "see", "genius.",
                      "Because", "the", "people", "who", "are", "crazy", "enough", "to", "think", "they", "can",
                      "change", "the", "world,", "are", "the", "ones", "who", "do."]
    
    var searchController : UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchController = UISearchController(searchResultsController:  nil)
        
        self.searchController.searchResultsUpdater = self
        self.searchController.delegate = self
        self.searchController.searchBar.delegate = self
        
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.dimsBackgroundDuringPresentation = true
        
        self.navigationItem.titleView = searchController.searchBar
        
        self.definesPresentationContext = true
        
        searchController.becomeFirstResponder()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allResults.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvSearchControllerCell", for: indexPath) as! tvSearchControllerCell

        cell.lblTitle.text = allResults[indexPath.item]
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        print("printing in update result in tableview")
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
class tvSearchControllerCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
}
