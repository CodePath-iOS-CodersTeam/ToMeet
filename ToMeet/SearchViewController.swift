//
//  SearchViewController.swift
//  ToMeet
//
//  Created by Rachel Chan on 12/4/21.
//

import UIKit
import Parse
import MessageKit
import InputBarAccessoryView

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    let data = ["John Smith, Gian Paul, Adam Bernsten, Alexis Evergreen"]
    var searchResults: [String]!
    
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchResults = data
        
        searchTableView.delegate = self
        searchTableView.dataSource = self
        
        searchBar.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return searchResults.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        cell.textLabel?.text = searchResults[indexPath.row]
        return cell
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
        //var firstNameQuery = PFQuery(className:"//enter class name for users name")
        //var firstNameQuery = PFQuery(className: "users")
        //firstNameQUery.whereKey
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
            searchResults = []
        
            if searchText == ""{
            
                searchResults = data
            }
        
            else {
                for word in data{
            
                    if word.lowercased().contains(searchText.lowercased()){
                
                        searchResults.append(word)
                    }
                }
        
                self.searchTableView.reloadData()
            }
    
    }
}
