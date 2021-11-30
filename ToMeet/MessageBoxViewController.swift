//
//  MessageBoxViewController.swift
//  ToMeet
//
//  Created by Bo on 11/20/21.
//

import UIKit
import Parse
import MessageKit

class MessageBoxViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var messageBoxTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageBoxTableView.register(UITableView.self, forCellReuseIdentifier: "cell"))
        messageBoxTableView.dataSource = self
        messageBoxTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        //shows messages
        let vc = MessagingViewController
        vc.title = "Chat"
        navigationController?.pushViewController(vc, animated: true)
        
    }

    @IBAction func requestsButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "requestsSegue", sender: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
