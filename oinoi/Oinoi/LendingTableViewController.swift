//
//  LendingTableViewController.swift
//  Oinoi
//
//  Created by Bill on 10/14/15.
//  Copyright © 2015 Bill. All rights reserved.
//

import UIKit

class LendingTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var list: NSMutableArray! = NSMutableArray()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.list.addObject("Rick")
        self.list.addObject("Robert")
        
        
        self.tableView.rowHeight = 44.0
        
        self.tableView.estimatedRowHeight = 44

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: LendingCell = self.tableView.dequeueReusableCellWithIdentifier("lendCell") as! LendingCell
        
        cell.name?.text = self.list.objectAtIndex(indexPath.row) as? String
        
        return cell
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
