//
//  LogInViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/28/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

var activeAccountType: String = ""
var activeUser: String = ""
var loggedIn = false

class LogInViewController: UIViewController,  UITextFieldDelegate, DatabaseProtocol {
    var users: [User] = [User]()
    @IBOutlet var lbl_error: UILabel!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var text_email: UITextField!
    @IBOutlet var text_password: UITextField!
    @IBOutlet var text_accessCode: UITextField!
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
            if (selectedUser.email == text_email.text){
                if (selectedUser.password == text_password.text){
                    activeAccountType = selectedUser.accountType!
                    activeUser = selectedUser.email!
                    loggedIn = true
                }
            }
            
         }
        
        if (loggedIn == true){
          performSegueWithIdentifier("LogInSuccess", sender:nil)
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
    }


}
