//
//  LessonTableViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class PatientLessonTableViewController: UITableViewController{

    @IBOutlet weak var tblLessons: UITableView!
    @IBOutlet var lbl_title: UILabel!
    @IBOutlet var btn_logOut: UIButton!
    var user: User = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_logOut.layer.cornerRadius = 10
        let name: String = "\(user.firstName!)"
        lbl_title.text = "\(name)'s Tongue Thrust Therapy Program"
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
        cell.btn_exercise4.tag = indexPath.row
        cell.btn_exercise5.tag = indexPath.row
        cell.label_weekNum.text = week.weekNumber
        if (week.weekNumber == "Getting Started"){
            cell.btn_exercise2.setTitle("The Spot", forState: UIControlState.Normal)
            cell.btn_exercise4.hidden = true
            cell.btn_exercise5.hidden = true
            cell.btn_exercise3.hidden = true
            cell.btn_exercise1.setTitle("Resting Position", forState: UIControlState.Normal)
           // cell.label_complete.text = ""
        }
        if (week.exercises.count > 3){
            cell.btn_exercise4.tag = indexPath.row
        }
        if (week.exercises.count > 4){
            cell.btn_exercise5.tag = indexPath.row
        }
        else if (week.exercises.count <= 3){
            cell.btn_exercise4.hidden = true
            cell.btn_exercise5.hidden = true
        }
        if (week.complete == true){
        cell.label_complete.text = "Complete"
        }
        else{
        cell.label_complete.text = "Not Complete"
        }
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
        if(segue.identifier == "segue_exercise1_patient")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[0]
        }
        if(segue.identifier == "segue_exercise2_patient")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[1]
        }
        if(segue.identifier == "segue_exercise3_patient")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[2]
        }
        if(segue.identifier == "segue_exercise4_patient")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[3]
        }
        if(segue.identifier == "segue_exercise5_patient")
        {
            let btnExercise : UIButton = sender as! UIButton
            let selectedIndex : Int = btnExercise.tag
            let viewController : LessonViewController = segue.destinationViewController as! LessonViewController
            viewController.exercise = sharedInstance.weeks[selectedIndex].exercises[4]
        }
    }
 

    

}
