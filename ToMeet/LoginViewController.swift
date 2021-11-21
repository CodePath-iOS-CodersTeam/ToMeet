//
//  LoginViewController.swift
//  ToMeet
//
//  Created by Bo on 11/20/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSignIn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "loginSegue", sender: nil)
        
//        let username = usernameField.text!
//        let password = passwordField.text!
//
//        PFUser.logInWithUsername(inBackground: username, password: password) {
//
//            (user, error) in
//
//            if user != nil {
//
//                self.performSegue(withIdentifier: "loginSegue", sender: nil)
//
//            } else {
//
//                print("Error: \(error?.localizedDescription)")
//
//            }
//
//        }
        
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        
        self.performSegue(withIdentifier: "signupSegue", sender: nil)
        
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
