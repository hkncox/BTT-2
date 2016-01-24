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
    func User(_firstName: String, _lastName: String, _userName: String, _password: String, _email: String)
    {
        firstName = _firstName;
        lastName = _lastName;
        userName = _userName;
        password = _password;
        email = _email;
    }
    func validate(_firstName: String, _lastName: String, _userName: String, _password: String, _email: String)
    {
        if !(isValidEmail(text_email.text!))
        {
            text_email.text = "Invalid email. Please try again"
        }
        
        
    }
    func isValidEmail(testStr:String) -> Bool {
        
        print("validate emilId: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluateWithObject(testStr)
        return result
        
    }
}