//
//  learnmore.swift
//  BTT-2
//
//  Created by FALEH ALDOSARI on 2/10/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
class learnmore: UITableViewController
{

    @IBOutlet weak var tbl_learnMore: UITableView!
    var learnMoreInfo = [LearnMoreInfo]()
    var selectedIndexPath: NSIndexPath? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createInfo()
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
        return learnMoreInfo.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("learnmore") as! LearnMoreTableViewCell
        let info: LearnMoreInfo = learnMoreInfo[indexPath.row]
        cell.label_title.text = info.title
        cell.text_details.text = info.details
      //  cell.text_details.hidden = true
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
             //   cell.text_details.hidden = false
                
            } else {
                selectedIndexPath = indexPath
              //   cell.text_details.hidden = false
            }
        }
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let smallHeight: CGFloat = 50.0
        let expandedHeight: CGFloat = 225.0
        let ip = indexPath
        if selectedIndexPath != nil {
            if ip == selectedIndexPath! {
                return expandedHeight
            } else {
                return smallHeight
            }
        } else {
            return smallHeight
        }
    }
    func createInfo(){
        learnMoreInfo.append(LearnMoreInfo(title: "About our Program", details: "The Bust the Thrust treatment program is designed to be used under the direction of a certified Speech Language Pathologist. In using this program, a Speech Language Pathologist will be able to evaluate and treat irregular open-mouth postures, speech sound errors, and swallowing disorders associated with tongue thrust. The program teaches clients to increase the awareness of their mouth, facial muscles, and tongue postures. Clients are taught techniques to improve their muscle strength and coordination. Most importantly, through this program, a client's oral musculature is retrained to produce a correct and mature swallow pattern free of any thrust movement or pressure. \n The program provides an informal assessment to help determine if a tongue thrust exists and/or the severity level of a tongue thrust. The program offers weekly therapy session guidelines. Each weekly guideline contains multiple exercises to be taught by the Speech Language Pathologist to a client on a consistent weekly basis. The client then practices the exercises throughout the week, tracking their practice on the exercise worksheets. The videos, written descriptions, and tips are provided to ensure the exercises are taught and practiced correctly. \n We offer 3 subscription plans: (1) Therapist access for $149.99 with the ability to add patient users for progress tracking purposes. Patient users will also receive notification reminders to complete their exercises. 2) Single User access for those who wish to complete the program without a speech language pathologist. The sign-up and subscription process will redirect to ApplePay where users will sign up and pay for the program."))
        learnMoreInfo.append(LearnMoreInfo(title: "What is a Tongue Thrust?", details: "A tongue thrust, otherwise known as an orofacial myofunctional disorder, occurs when the tongue moves forward in an exaggerated way during speech and/or swallowing. \nThe tongue may lie too far forward during rest or may protrude between the upper and lower teeth during speech and swallowing, and at rest. \nA person typically swallows between 1,200 and 2,000 times within a 24 hour time period with about four pounds of pressure each time. If a person suffers from a tongue thrust, this continuous pressure tends to force the teeth out of alignment. \nMany orthodontists complete orthodontic treatment with what appears to be good results, only to discover that the case relapses because of the patient's tongue thrust. \n If the tongue is allowed to continue its pushing action against the teeth, it will continue to push the teeth forward and reverse any orthodontic work performed."))
        learnMoreInfo.append(LearnMoreInfo(title: "Signs and Symptoms", details: "You might have a tongue thrust if: \n1) Your tongue protrudes between/against your front teeth when forming s, z, t, d, n, l, sh\n2) You have a frequent open-mouth resting posture with your lips parted and/or your tongue resting against your front teeth\n3) You have frequent mouth breathing\n4) You are a messy and/or loud eater\n5) Your tongue is visible near the front of your mouth or between your teeth while swallowing and/or speaking\n6) You are unable or have difficulty swallowing while smiling\n7) You have experienced reversal of your orthodontic treatment\n8) You have protruding front teeth"))
    }
    
}

