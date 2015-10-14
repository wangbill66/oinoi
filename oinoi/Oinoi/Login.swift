//
//  Login.swift
//  Oinoi
//
//  Created by Bill on 10/13/15.
//  Copyright © 2015 Bill. All rights reserved.
//

import UIKit
import Parse
import Bolts

class Login: UIViewController {

    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Email: UITextField!
    
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
    @IBAction func LoginButton(sender: AnyObject) {
        if Email.text != "" && Password.text != "" {
            // Not Empty, Do something.
            PFUser.logInWithUsernameInBackground(Email.text!, password:Password.text!) {
                (user, error) -> Void in
                if user != nil {
                    // Yes, User Exists
                    print("User Exists")
                    self.performSegueWithIdentifier("LoginSuccessful", sender: self)
                } else {
                    // No, User Doesn't Exist
                    let alert = UIAlertView()
                    alert.title = "Invalid Credentials"
                    alert.message = ""
                    alert.addButtonWithTitle("Close")
                    alert.show()
                 
                }
            }
        } else {
            // Empty, Notify user
            let alert = UIAlertView()
            alert.title = "Missing Field"
            alert.message = ""
            alert.addButtonWithTitle("Close")
            alert.show()

        }
    }
    
    

}
