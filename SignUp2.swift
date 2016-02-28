//
//  Signup.swift
//  BTT
//
//  Created by Nicole Talley on 1/16/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//


import UIKit

class SignUp: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    var users: [User] = [User]()
    @IBOutlet var text_email: UITextField!
    @IBOutlet var text_firstName: UITextField!
    @IBOutlet var text_lastName: UITextField!
    @IBOutlet var text_createUserName: UITextField!
    @IBOutlet var text_confirmUserName: UITextField!
    @IBOutlet var text_createPassword: UITextField!
    @IBOutlet var label_error: UILabel!
    @IBOutlet var text_confirmPassword: UITextField!
    @IBOutlet var picker_accountType: UIPickerView!
    @IBOutlet var button_signUp: UIButton!
    @IBOutlet var button_clear: UIButton!
    var validated: Bool = false;
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker_accountType.delegate = self
        self.picker_accountType.dataSource = self
        pickerData = ["Therapist", "Single User"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // Catpure the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }
    @IBAction func emailTextFieldSelected(sender: AnyObject)
    {
        text_email.keyboardType = UIKeyboardType.EmailAddress
    }
    @IBAction func anyTextFieldSelected(sender: AnyObject)
    {
        text_firstName.clearsOnBeginEditing = true;
    }
    @IBAction func ClearButtonTapped(button_clear: UIButton)
    {
        text_firstName.text = ""
        text_lastName.text = ""
        text_createUserName.text = ""
        text_confirmUserName.text = ""
        text_createPassword.text = ""
        text_confirmPassword.text = ""
        label_error.text = ""
        text_firstName.enabled = true
        text_lastName.enabled = true
        text_createUserName.enabled = true
        text_confirmUserName.enabled = true
        text_createPassword.enabled = true
        text_confirmPassword.enabled = true
        button_signUp.setTitle("Display Cost", forState: UIControlState.Normal)
        validated = false;
        
    }
    @IBAction func SignUpButtonTapped(button_signUp: UIButton)
    {
        if (validated)
        {
            purchase()
        }
        else {
            validate(text_firstName.text!, _lastName: text_lastName.text!, _createUserName: text_createUserName.text!, _confirmUserName: text_confirmUserName.text!, _createPassword: text_createPassword.text!, _confirmPassword: text_confirmPassword.text!, _email: text_email.text!)
            if (validated)
            {
                purchase()
            }
        }
        
        
        // label_error.text = "
        
        
    }
    func purchase()
    {
        text_firstName.enabled = false;
        text_lastName.enabled = false;
        text_createUserName.enabled = false;
        text_confirmUserName.enabled = false;
        text_createPassword.enabled = false;
        text_confirmPassword.enabled = false;
        button_signUp.setTitle("Purchase", forState: UIControlState.Normal)
        if ([picker_accountType.selectedRowInComponent(0)] == 0) //THERAPIST
        {
            label_error.text = "The price for therapist access is $$$. Press Purchase to Continue"
           
            //CHECK PAYMENT HERE. IF SUCCESSFULL
            // ADD TO DATABASE
           
            
            
          //  users.append(User(_firstName: text_firstName.text!, _lastName: text_lastName.text!, _userName: text_confirmUserName.text!, _password: text_confirmPassword.text!, _email: text_email.text!, _accountType: "Therapist"))
         
            NSLog(users[0].firstName)
        }
        else //SINGLE USER
        {
            
            label_error.text = "The price for single user access is $$$. Press Purchase to Continue"
            
            //CHECK PAYMENT
            
            //ADD TO DATABASE
            
            // users.append(User(_firstName: text_firstName.text!, _lastName: text_lastName.text!, _userName: text_confirmUserName.text!, _password: text_confirmPassword.text!, _email: text_email.text!, _accountType: "Single User"))
          
        }
        
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        // Disable the Save button while editing.
        button_signUp.enabled = false
    }
    func validate(_firstName: String, _lastName: String, _createUserName: String, _confirmUserName: String, _createPassword: String, _confirmPassword: String, _email: String)
    {
        validated = true;
        if !(isValidName(text_firstName.text!) || text_firstName == nil)
        {
            label_error.text = "Enter a valid first name"
            text_firstName.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        if !(isValidName(text_lastName.text!) || text_lastName == nil)
        {
            label_error.text = "Enter a valid first name"
            text_lastName.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        
        if !(isValidEmail(text_email.text!))
        {
            label_error.text = "Invalid email. Please try again"
            text_email.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        if (!isValidUserName(text_createUserName.text!))
        {
            //CHECK IF ALREADY EXISTS IN DATABASE!
            label_error.text = "Invalid or missing username. Please try again"
            text_createUserName.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        if (text_createUserName.text != text_confirmUserName.text)
        {
            label_error.text = "Confirm username did not match username."
            text_confirmUserName.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        
        if (!isValidPassword(text_createPassword.text!))
        {
            label_error.text = "Enter a password with 6 characters minimum"
            text_createPassword.clearsOnBeginEditing = true;
            validated = false;
            return;
        }
        if (text_createPassword.text != text_confirmPassword.text)
        {
            label_error.text = "Confirm password did not match password."
            text_confirmUserName.clearsOnBeginEditing = true;
            validated = false;
            return;
            
        }
        
        validated = true;
        
        
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