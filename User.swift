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
    @IBOutlet var label_error: UILabel!
    @IBOutlet var text_confirmPassword: UITextField!
    @IBOutlet var button_signUp: UIButton?
  //  self.text_email.keyboardType = UIKeyboardType.EmailAddress
    @IBAction func emailTextFieldSelected(sender: AnyObject)
    {
        text_email.keyboardType = UIKeyboardType.EmailAddress
    }
    @IBAction func anyTextFieldSelected(sender: AnyObject)
    {
        text_firstName.clearsOnBeginEditing = true;
    }
    @IBAction func buttonTapped(button_signUp: UIButton)
    {
        validate(text_firstName.text!, _lastName: text_lastName.text!, _createUserName: text_createUserName.text!, _confirmUserName: text_confirmUserName.text!, _createPassword: text_createPassword.text!, _confirmPassword: text_confirmPassword.text!, _email: text_email.text!)
       
    }
    func User(_firstName: String, _lastName: String, _userName: String, _password: String, _email: String)
    {
        firstName = _firstName;
        lastName = _lastName;
        userName = _userName;
        password = _password;
        email = _email;
    }
 
    func validate(_firstName: String, _lastName: String, _createUserName: String, _confirmUserName: String, _createPassword: String, _confirmPassword: String, _email: String)
    {
        if !(isValidName(text_firstName.text!) || text_firstName == nil)
        {
            label_error.text = "Enter a valid first name"
            text_firstName.clearsOnBeginEditing = true;
        }
        if !(isValidName(text_lastName.text!) || text_lastName == nil)
        {
            label_error.text = "Enter a valid first name"
            text_lastName.clearsOnBeginEditing = true;
        }

        if !(isValidEmail(text_email.text!))
        {
            label_error.text = "Invalid email. Please try again"
            text_email.clearsOnBeginEditing = true;
        }
        if (!isValidUserName(text_createUserName.text!))
        {
            label_error.text = "Enter a valid username"
            text_createUserName.clearsOnBeginEditing = true;
        }
        if (isValidUserName(text_createUserName.text!))
        {
            if (text_createUserName.text != text_confirmUserName.text)
            {
                label_error.text = "Confirm username did not match username."
                text_confirmUserName.clearsOnBeginEditing = true;
            }
        }
        if (!isValidPassword(text_createPassword.text!))
        {
            label_error.text = "Enter a password with 6 characters minimum"
            text_createPassword.clearsOnBeginEditing = true;
        }
        if (isValidUserName(text_createUserName.text!))
        {
            if (text_createPassword.text != text_confirmPassword.text)
            {
                label_error.text = "Confirm password did not match password."
                text_confirmUserName.clearsOnBeginEditing = true;
            }
        }
        else{
            
        }
        
        
    }
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluateWithObject(email)
        return result
    
    }
    func isValidUserName(userName: String) -> Bool {
        let usernameRegEx = "[a-z0-9_-]{3,16}"
        let usernameTest = NSPredicate(format: "SELF MATCHES %@", usernameRegEx)
        let result = usernameTest.evaluateWithObject(userName)
        return result
    }
    func isValidPassword(password: String) -> Bool {
        let passwordRegEx = "[a-z0-9_-]{6,16}"
        let passowordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        let result = passowordTest.evaluateWithObject(password)
        return result
    }
    func isValidName(name: String) -> Bool{
        let nameRegEx =  "[A-Za-z ]{2,35}"
        let nameTest = NSPredicate(format: "SELF MATCHES %@", nameRegEx)
        let result = nameTest.evaluateWithObject(name)
        return result
    }
    @IBAction func dismissKeyboard(sender: AnyObject){
        text_confirmPassword.resignFirstResponder()
         text_createPassword.resignFirstResponder()
        text_confirmUserName.resignFirstResponder()
        text_createUserName.resignFirstResponder()
        text_firstName.resignFirstResponder()
        text_lastName.resignFirstResponder()
            text_email.resignFirstResponder()
    }

}