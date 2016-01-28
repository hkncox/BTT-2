//
//  User.swift
//  BTT
//
//  Created by Nicole Talley on 1/16/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//


import UIKit

class User: UIViewController
{
    var firstName = ""
    var lastName = ""
    var userName = ""
    var password = ""
    var email = ""
    @IBOutlet var text_email: UITextField!
    @IBOutlet var text_firstName: UITextField!
    @IBOutlet var text_lastName: UITextField!
    @IBOutlet var text_createUserName: UITextField!
    @IBOutlet var text_confirmUserName: UITextField!
    @IBOutlet var text_createPassword: UITextField!

    @IBOutlet var text_confirmPassword: UITextField!
    @IBOutlet var button_signUp: UIButton?
    @IBAction func buttonTapped(button_signUp: UIButton)
    {
       /*  validate(text_firstName.text?, _lastName: text_lastName.text?, _createUserName: text_createUserName.text!, _confirmUserName: text_confirmUserName.text!, _createPassword: text_createPassword.text!, _confirmPassword: text_confirmPassword.text!, _email: text_email.text!)*/
        if isValidEmail(text_email.text!)
        {
            text_email.text = "Success!"
        }
        else {
         //   text_email.textColor
            text_email.text = "Invalid email. Please try again."
        }
    }
    func User(_firstName: String, _lastName: String, _userName: String, _password: String, _email: String)
    {
        firstName = _firstName;
        lastName = _lastName;
        userName = _userName;
        password = _password;
        email = _email;
    }
 
    func validate(_firstName: String?, _lastName: String?, _createUserName: String?, _confirmUserName: String?, _createPassword: String?, _confirmPassword: String?, _email: String?)
    {
        if !(isValidEmail(text_email.text!))
        {
            text_email.text = "Invalid email. Please try again"
        }
        
        
    }
    func isValidEmail(email: String) -> Bool {
        
        print("validate emilId: \(email)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluateWithObject(email)
        return result
        
    }
    @IBAction func dismissKeyboard(sender: AnyObject){
        textField.resignFirstResponder()
    }

}