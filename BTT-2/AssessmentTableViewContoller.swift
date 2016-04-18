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
    @IBOutlet var btnBack :UIButton?
    @IBOutlet var btnSignup: UIButton?
    @IBOutlet weak var tbl_learnMore: UITableView!
    var assessment = [AssesmentData]()
    var selectedIndexPath: NSIndexPath? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createInfo()
        btnBack!.layer.cornerRadius = 5
        btnSignup!.layer.cornerRadius = 5
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
        let cell = tableView.dequeueReusableCellWithIdentifier("learnmore") as! LearnMoreTableViewCell
        let info: AssesmentData = assessment[indexPath.row]
        cell.label_title.text = info.section
        cell.text_details.text = info.details
        //  cell.text_details.hidden = true
        cell.label_title.layer.cornerRadius = 5
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("didSelectRowAtIndexPath was called")
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! LearnMoreTableViewCell
        switch selectedIndexPath {
        case nil:
            selectedIndexPath = indexPath
        // cell.text_details.hidden = false
        default:
            if (selectedIndexPath == indexPath ){
                selectedIndexPath = nil
                //      cell.text_details.hidden = true
                
            } else {
                selectedIndexPath = indexPath
                //    cell.text_details.hidden = false
            }
        }
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let smallHeight: CGFloat = 41.0
        let ip = indexPath
        if selectedIndexPath != nil {
            if ip == selectedIndexPath! {
                if ip.row == 0{
                    return 455.0
                }
                if ip.row == 1{
                    return 200.0
                }
                if ip.row == 2{
                    return 400.0
                }
                if ip.row == 3{
                    return 350.0
                }
                else{
                    return 300.0
                }
                
            } else {
                return smallHeight
                
            }
        } else {
            return smallHeight
        }
    }
    func createInfo(){
        assessment.append(AssesmentData(section: "History", details: "Prolonged use of artificial nipples (pacifiers, bottles, sippy cups)"))
        assessment.append(AssesmentData(section: "History", details: "History of allergies or nasal congestion"))
        assessment.append(AssesmentData(section: "History", details: "History of thumb or finger sucking"))
        assessment.append(AssesmentData(section: "History", details: "Hereditary factors (family history of tongue thrust)"))
        assessment.append(AssesmentData(section: "History", details: "History of  ankyloglosia (tongue tied)"))
        assessment.append(AssesmentData(section: "History", details: "History of mouth breathing"))
        assessment.append(AssesmentData(section: "History", details: "Reversal of orthodontic work"))
        assessment.append(AssesmentData(section: "History", details: "History of oral defensiveness"))
        assessment.append(AssesmentData(section: "History", details: "Difficulty swalling pills"))
        assessment.append(AssesmentData(section: "History", details: "Feeding difficulties as an infant"))
        assessment.append(AssesmentData(section: "History", details: "TMJ or reported jaw pain"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to purse lips"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to pucker lips"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to spread lips"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to lift tongue tip up to alveolar ridge without jaw support"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to lift and potrude tongue out of mouth without lip or jaw support"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to complete tongue pops/clicks (sucking tongue against roof of mouth and popping down rapidly)"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to Unable to hold tongue sucked up against roof of mouth for 10 seconds with jaw opened wide"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to move tongue laterally"))
        assessment.append(AssesmentData(section: "Oral Motor Exam", details: "Unable to complete any tongue movement without lip and or jaw movement or support"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Lips are asymmetrical"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Lips hang open during rest"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "High, arched, or narrow palate"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Enlarged tonsils"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Enlarged adenoids"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Jaw hangs open during rest"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Slight overbite"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Severe overbite"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Sever Underbite"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Tongue hangs out of mouth"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Tongue lies between teeth during rest"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Tongue pushes against teeth during rest"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Macroglossia (Enlarged tongue)"))
        assessment.append(AssesmentData(section: "Oral Observations", details: "Ankyloglossia (tongue tied)"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Abnormally loud swallow"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Abnormally messy swallow"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Extraneous facial, head, or jaw movement during swallow"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Inadequate lingual and/or labial seal (drooling, loss of liquid during swallow"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Tongue pushing forward during swallow"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Using a straw requires more than 1 quarter inch access to a straw to suck thin liquids up"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Tongue pushing forward during a swallow when using a straw and thin liquids"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Using a straw requires more than 1 half inch access to a straw to suck thick liquids up"))
        assessment.append(AssesmentData(section: "Swallowing Liquids", details: "Tongue pushing forward during a swallow when using a straw and thick liquids"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Abnormally loud or messy swallow"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Extraneous facial, head, or jaw movement during swallow"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Inadequate lingual and/or labial seal (drooling, loss of food during swallow)"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Tongue pushing forward during swallow"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Chewing observed near the front of the mouth"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Abnormally lour or messy chewing/swallow"))
        assessment.append(AssesmentData(section: "Swallowing Solids", details: "Extraneous facial, head, or jaw movement during swallow"))
        
    }
}