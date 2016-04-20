//
//  AssessmentTableViewContoller.swift
//  BTT-2
//
//  Created by Chad Rasmussen on 4/18/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
class Assessment: UITableViewController
{
    //@IBOutlet var btnBack :UIButton?
    @IBOutlet weak var tbl_Assessment: UITableView!
    var assessment = [AssesmentData]()
    var selectedIndexPath: NSIndexPath? = nil
    var result: Double = 0.0
//    @IBOutlet var btn_checkbox: UIButton!
    var checked: UIImage = UIImage(imageLiteral: "img/checked_checkbox.png")
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createInfo()
        //btnBack!.layer.cornerRadius = 5
        
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
        return assessment.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("assessment") as! AssessmentTableViewCell
        let info: AssesmentData = assessment[indexPath.row]
        cell.btn_check.tag = indexPath.row;
        cell.lbl_CheckboxText.text = info.details
        return cell
    }
 //   @IBAction func checkBoxClicked(sender: AnyObject){
   //     cell.btn_checkbox.setImage(checked, forState: .Normal)
      //  result += 1
    //}
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("didSelectRowAtIndexPath was called")
//        let cell = tableView.cellForRowAtIndexPath(indexPath) as! LearnMoreTableViewCell
//        switch selectedIndexPath {
//        case nil:
//            selectedIndexPath = indexPath
//        // cell.text_details.hidden = false
//        default:
//            if (selectedIndexPath == indexPath ){
//                selectedIndexPath = nil
//                //      cell.text_details.hidden = true
//                
//            } else {
//                selectedIndexPath = indexPath
//                //    cell.text_details.hidden = false
//            }
//        }
//        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
//    }
   /// override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
   //
    //}
    }
    func createInfo(){
        assessment.append(AssesmentData(isChecked: false, details: "Prolonged use of artificial nipples (pacifiers, bottles, sippy cups)"))
        assessment.append(AssesmentData(isChecked: false, details: "History of allergies or nasal congestion"))
        assessment.append(AssesmentData(isChecked: false, details: "History of thumb or finger sucking"))
        assessment.append(AssesmentData(isChecked: false, details: "Family history of tongue thrust"))
        assessment.append(AssesmentData(isChecked: false, details: "History of  tongue tied"))
        assessment.append(AssesmentData(isChecked: false, details: "History of mouth breathing"))
        assessment.append(AssesmentData(isChecked: false, details: "Reversal of orthodontic work"))
        assessment.append(AssesmentData(isChecked: false, details: "History of oral defensiveness"))
        assessment.append(AssesmentData(isChecked: false, details: "Difficulty swalling pills"))
        assessment.append(AssesmentData(isChecked: false, details: "Feeding difficulties as an infant"))
        assessment.append(AssesmentData(isChecked: false, details: "TMJ or reported jaw pain"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to purse lips"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to pucker lips"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to spread lips"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to lift tongue tip up to alveolar ridge without jaw support"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to lift and potrude tongue out of mouth without lip or jaw support"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to complete tongue pops/clicks (sucking tongue against roof of mouth and popping down rapidly)"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to Unable to hold tongue sucked up against roof of mouth for 10 seconds with jaw opened wide"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to move tongue laterally"))
        assessment.append(AssesmentData(isChecked: false, details: "Unable to complete any tongue movement without lip and or jaw movement or support"))
        assessment.append(AssesmentData(isChecked: false, details: "Lips are asymmetrical"))
        assessment.append(AssesmentData(isChecked: false, details: "Lips hang open during rest"))
        assessment.append(AssesmentData(isChecked: false, details: "High, arched, or narrow palate"))
        assessment.append(AssesmentData(isChecked: false, details: "Enlarged tonsils"))
        assessment.append(AssesmentData(isChecked: false, details: "Enlarged adenoids"))
        assessment.append(AssesmentData(isChecked: false, details: "Jaw hangs open during rest"))
        assessment.append(AssesmentData(isChecked: false, details: "Slight overbite"))
        assessment.append(AssesmentData(isChecked: false, details: "Severe overbite"))
        assessment.append(AssesmentData(isChecked: false, details: "Sever Underbite"))
        assessment.append(AssesmentData(isChecked: false, details: "Tongue hangs out of mouth"))
        assessment.append(AssesmentData(isChecked: false, details: "Tongue lies between teeth during rest"))
        assessment.append(AssesmentData(isChecked: false, details: "Tongue pushes against teeth during rest"))
        assessment.append(AssesmentData(isChecked: false, details: "Macroglossia (Enlarged tongue)"))
        assessment.append(AssesmentData(isChecked: false, details: "Ankyloglossia (tongue tied)"))
        assessment.append(AssesmentData(isChecked: false, details: "Abnormally loud swallow"))
        assessment.append(AssesmentData(isChecked: false, details: "Abnormally messy swallow"))
        assessment.append(AssesmentData(isChecked: false, details: "Abnormally lour or messy chewing"))
        assessment.append(AssesmentData(isChecked: false, details: "Extraneous facial, head, or jaw movement during swallow"))
        assessment.append(AssesmentData(isChecked: false, details: "Inadequate lingual and/or labial seal (drooling, loss of liquid during swallow"))
        assessment.append(AssesmentData(isChecked: false, details: "Using a straw requires more than 1 quarter inch access to a straw to suck thin liquids up"))
        assessment.append(AssesmentData(isChecked: false, details: "Tongue pushing forward during a swallow when using a straw and thin liquids"))
        assessment.append(AssesmentData(isChecked: false, details: "Using a straw requires more than 1 half inch access to a straw to suck thick liquids up"))
        assessment.append(AssesmentData(isChecked: false, details: "Extraneous facial, head, or jaw movement swallowing solids"))
        assessment.append(AssesmentData(isChecked: false, details: "Inadequate lingual and/or labial seal (drooling, loss of food during swallow)"))
        assessment.append(AssesmentData(isChecked: false, details: "Tongue pushing forward during swallow"))
        assessment.append(AssesmentData(isChecked: false, details: "Chewing observed near the front of the mouth"))
        
        assessment.append(AssesmentData(isChecked: false, details: "Extraneous facial, head, or jaw movement during swallow"))
        
    }
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "assessmentResults")
        {
            let viewController : AssessmentResultsViewController = segue.destinationViewController as! AssessmentResultsViewController
            result = result/Double(assessment.count)
            viewController.results = result
        }
    }*/
}