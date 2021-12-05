//
//  SignUpViewController.swift
//  ToMeet
//
//  Created by Rachel Chan on 11/20/21.
//

import UIKit
import Parse
import AlamofireImage

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmpasswordField: UITextField!
    @IBOutlet weak var unCheckbox: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cancelButton.addTarget(self, action: #selector(cancelClicked(_:)), for: .touchUpInside)
        
    }
    
    var unchecked = true
    
    @IBAction func checkButton(_ sender: UIButton) {
        
            if unchecked {
                unCheckbox.setImage(UIImage(named: "Checkbox-Full-icon"), for: UIControl.State.normal)
            } else {
                unCheckbox.setImage(UIImage(named: "Checkbox-Empty-icon"), for: UIControl.State.normal)
            }
    }
    
    @IBAction func onSignup(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cancelSegue", sender: nil)
        
//        let user = PFUser()
//        user.username = usernameField.text
//        user.password = passwordField.text
//        user.email = emailField.text

//        user.signUpInBackground { (success, error) in
//            if success {
//                self.performSegue(withIdentifier: "cancelSegue", sender: nil)
//            } else {
//                print ("Error: \(error?.localizedDescription)")
//            }
//        }
    }
    
    @IBAction func cancelClicked(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cancelSegue", sender: nil)
        
//        let story = UIStoryboard(name:"Main", bundle: nil)
        // let controller = story.instantiateViewController(withIdentifier: "cancelSegue") as! (add the class name/storyboard id)
        // self.present(controller, animated: true, completion: nil)
        // hello
    }
    
}
