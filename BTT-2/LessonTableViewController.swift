//
//  LessonTableViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class LessonTableViewController: UITableViewController{

    @IBOutlet weak var tblLessons: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    override func viewWillAppear(animated: Bool) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sharedInstance.weeks.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("lessonCell") as! LessonTableViewCell
        let week: Week = sharedInstance.weeks[indexPath.row]
        cell.btn_exercise1.tag = indexPath.row
        cell.btn_exercise2.tag = indexPath.row
        cell.btn_exercise3.tag = indexPath.row
        cell.label_weekNum.text = week.weekNumber
        cell.label_complete.text = "\(week.complete)"
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segue_exercise1")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[0]
        }
        if(segue.identifier == "segue_exercise2")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[1]
        }
        if(segue.identifier == "segue_exercise3")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[2]
        }
    }
 

    

}
