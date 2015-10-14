//
//  Register.swift
//  Oinoi
//
//  Created by Bill on 10/13/15.
//  Copyright © 2015 Bill. All rights reserved.
//

import UIKit
import Parse
import Bolts

class Register: UIViewController {
    @IBOutlet weak var FirstName: UITextField!

    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if PFUser.currentUser() != nil {
            self.performSegueWithIdentifier("LoginSuccessful", sender: self)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Register(sender: AnyObject) {
        var firstName = FirstName.text
        var lastName = LastName.text
        var email = Email.text
        var password = Password.text
        if firstName != "" && lastName != "" && email != "" && password != "" {
            userSignUp()
            
        } else {
            let alert = UIAlertView()
            alert.title = "Missing Fields"
            alert.message = ""
            alert.addButtonWithTitle("Close")
            alert.show()
        }
    }
    
    func userSignUp() {
        var user = PFUser()
        user.username = Email.text
        user.password = Password.text
        user.email = Email.text
        user.signUpInBackgroundWithBlock {
            (succeeded, error) -> Void in
            if error == nil {
                // Hooray! Let them use the app now.
                print("User Signed Up");
                // Make it go to next screen
                PFUser.currentUser()
                self.performSegueWithIdentifier("RegisterSuccessful", sender: self)
                
                
            } else {
                // Show the errorString somewhere and let the user try again.
                let alert = UIAlertView()
                alert.title = "Invalid Field"
                alert.message = ""
                alert.addButtonWithTitle("Close")
                alert.show()
                
            }
        }
    }
    

}
