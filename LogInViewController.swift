//
//  LogInViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/28/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit



class LogInViewController: UIViewController,  UITextFieldDelegate, DatabaseProtocol {
    var activeAccountType: String = ""
  //  var activeUser: String = ""
    var loggedIn = false
    //var name: String = ""
    var users: [User] = [User]()
    @IBOutlet var lbl_error: UILabel!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var text_email: UITextField!
    @IBOutlet var text_password: UITextField!
    @IBOutlet var text_accessCode: UITextField!
    var loggedInUser: User = User()
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
        cancelButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
        let db = DatabaseModel()
        db.delegate = self
        db.downloadItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func itemsDownloaded(items: [User]) {
        
        users = items
        
    }
    @IBAction func logInButtonTapped(logInButton: UIButton){
        lbl_error.text = ""
        if (text_email == nil){
            lbl_error.text = "Email is a required field"
            return
        }
        if (text_password == nil){
            lbl_error.text = "Password is required"
            return
        }
        
        for (var i = 0; i < users.count; i++){
            let selectedUser: User = users[i]
            if (selectedUser.accountType == "Therapist")
            {
               let therapistUser = selectedUser as! Therapist
                if (therapistUser.email!.uppercaseString == text_email.text!.uppercaseString){
                    if (therapistUser.password == text_password.text){
                        activeAccountType = "Therapist"
                        loggedIn = true
                        loggedInUser = selectedUser
                    }
                }
            }
            if (selectedUser.accountType == "Single User")
            {
                let singleUser = selectedUser as! SingleUser
                if (singleUser.email!.uppercaseString == text_email.text!.uppercaseString){
                    if (singleUser.password == text_password.text){
                        activeAccountType = "Single User"
                        loggedIn = true
                        loggedInUser = selectedUser
                    }
                }
            }

            if (selectedUser.accountType == "Patient"){
                let patientUser = selectedUser as! Patient
                if (patientUser.accessCode == text_accessCode.text){
                    activeAccountType = "Patient"
                    loggedIn = true
                    loggedInUser = selectedUser
                }
            }
            
            
         }
        
        if (loggedIn == true){
            if (activeAccountType == "Therapist" || activeAccountType == "Single User"){
          performSegueWithIdentifier("LogInSuccess", sender:nil)
                
            }
            else if (activeAccountType == "Patient"){
                performSegueWithIdentifier("LogInPatient", sender:nil)
            }
        }
        else {
            lbl_error.text = "Username and password not recognized. Please try again"
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "LogInSuccess"){
         let destination = segue.destinationViewController as! TherapistLessonTableViewController
            destination.user = loggedInUser
        }
        if (segue.identifier == "LogInPatient"){
            let destination = segue.destinationViewController as! PatientLessonTableViewController
            destination.user = loggedInUser
        }
        
    }


}
