//
//  Settings.swift
//  Oinoi
//
//  Created by Bill on 10/13/15.
//  Copyright © 2015 Bill. All rights reserved.
//

import UIKit
import Parse
import Bolts

class Settings: UIViewController {

    @IBAction func logout(sender: AnyObject) {
        PFUser.logOut()
        if PFUser.currentUser() == nil {
            "Logged out successfully"
//            self.performSegueWithIdentifier("LogoutSuccessful", sender: self)
            let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("LandPage")
            UIApplication.sharedApplication().keyWindow?.rootViewController = loginViewController
        } else {

            let alert = UIAlertView()
            alert.title = "Logout Failed (T.T)"
            alert.message = "Try Again"
            alert.addButtonWithTitle("Close")
            alert.show()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
