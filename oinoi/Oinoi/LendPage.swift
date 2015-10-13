//
//  LendPage.swift
//  Oinoi
//
//  Created by Bill on 10/13/15.
//  Copyright © 2015 Bill. All rights reserved.
//

import UIKit

class LendPage: UIViewController {
    @IBOutlet weak var RecipientEmail: UITextField!
    
    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var Interest: UITextField!
    
    @IBOutlet weak var DueDate: UITextField!
    

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
    @IBAction func ConfirmButton(sender: AnyObject) {
    }

}
