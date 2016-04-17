//
//  Signup.swift
//  BTT
//
//  Created by Nicole Talley on 1/16/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//


import UIKit
import StoreKit
class SignUp: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource, DatabaseProtocol
{
    var products: [SKProduct] = [SKProduct]()
    var users: [User] = [User]()
    var selectedUser: User = User()
    @IBOutlet var text_email: UITextField!
    @IBOutlet var text_firstName: UITextField!
    @IBOutlet var text_lastName: UITextField!
    @IBOutlet var text_createPassword: UITextField!
    @IBOutlet var label_error: UITextView!
    @IBOutlet var text_confirmPassword: UITextField!
    @IBOutlet var picker_accountType: UIPickerView!
    @IBOutlet var button_signUp: UIButton!
    @IBOutlet var button_clear: UIButton!
    @IBOutlet var button_cancel: UIButton!
    @IBOutlet var button_logIn: UIButton!
     let db = DatabaseModel()
     var validated: Bool = false;
    var pickerData: [String] = [String]()
  //  var db: DatabaseModel = DatabaseModel()
    override func viewDidLoad() {
        super.viewDidLoad()
 //       NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(MasterViewController.handlePurchaseNotification(_:)),
   //         name: IAPHelper.IAPHelperPurchaseNotification,
     //       object: nil)
        button_cancel.layer.cornerRadius = 5
        button_clear.layer.cornerRadius = 5
        button_logIn.layer.cornerRadius = 5
        button_signUp.layer.cornerRadius = 5
        self.picker_accountType.delegate = self
        self.picker_accountType.dataSource = self
        text_firstName.autocorrectionType = .No
        text_lastName.autocorrectionType = .No
        text_createPassword.autocorrectionType = .No
        text_email.autocorrectionType = .No
        text_confirmPassword.autocorrectionType = .No
        pickerData = ["Therapist", "Single User"]
       
        db.delegate = self
        db.downloadItems()
     //   products = []
        
        
    //  Products.store.requestProducts{success, products in
      //      if success {
        //        self.products = products!
          //  }
        //}

    }

    func itemsDownloaded(items: [User]) {
        
        users = items
        
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
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
    
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
        text_createPassword.text = ""
        text_confirmPassword.text = ""
        text_email.text = ""
        label_error.text = ""
        text_firstName.enabled = true
        text_lastName.enabled = true
        text_createPassword.enabled = true
        text_confirmPassword.enabled = true
        text_email.enabled = true
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
            validate(text_firstName.text!, _lastName: text_lastName.text!, _createPassword: text_createPassword.text!, _confirmPassword: text_confirmPassword.text!, _email: text_email.text!)
            if (validated)
            {
                purchase()
            }
        }
     
    }
    func purchase()
    {
        text_firstName.enabled = false;
        text_lastName.enabled = false;
        text_createPassword.enabled = false;
        text_confirmPassword.enabled = false;
        button_signUp.setTitle("Purchase", forState: UIControlState.Normal)
              let selectedValue = pickerData[picker_accountType.selectedRowInComponent(0)]
        if (selectedValue == "Therapist") //THERAPIST
        {
            label_error.textColor = UIColor.blackColor()
            label_error.text = "The price for therapist access is $149.99. Press Purchase to Continue"
        //      let product = products[0]
      //       Products.store.buyProduct(product)            //CHECK PAYMENT HERE. IF SUCCESSFUL
             let dataDictionary = [ "firstName" : text_firstName.text!, "lastName" : text_lastName.text!, "email" : text_email.text!, "password" : text_createPassword.text!, "accountType" : "Therapist"]
             db.addToDB(dataDictionary)
          //  db.
        
        }
        else //SINGLE USER
        {
               label_error.textColor = UIColor.blackColor()
            label_error.text = "The price for single user access is $49.99. Press Purchase to Continue"
            
            //CHECK PAYMENT
            
     //       let dataDictionary:[String:String] = [ "firstName" : text_firstName.text!, "lastName" : text_lastName.text!, "email" : text_email.text!, "password" : text_createPassword.text!, "accountType" : "Single User"]
         //   db.addToDB(dataDictionary)
          
        }
        
    }
 /*   func addToDB(){
        let url:NSURL = NSURL(string: "http://www.utahscommunicationconnection.com/postService.php")!
        
        let request:NSMutableURLRequest = NSMutableURLRequest(URL: url)
        var dataDictionary:[String:String?] = [ "firstName" : text_firstName.text, "lastName" : text_lastName.text, "email" : text_email.text, "password" : text_createPassword.text, "accountType" : pickerData[picker_accountType.selectedRowInComponent(0)]]
        
        var data:NSData = NSJSONSerialization.dataWithJSONObject(dataDictionary, options: nil, error: nil)!
        request.HTTPBody = data
        
        NSURLSessionConfiguration *defaultConfigObject = [NSURLSessionConfiguration defaultSessionConfiguration];
        NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: defaultConfigObject delegate: nil delegateQueue: [NSOperationQueue mainQueue]];
        
        NSURL * url = [NSURL URLWithString:@"http://www.utahscommunicationconnection.com/postService.php"];
        NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
        [urlRequest setHTTPMethod:@"POST"];
        [urlRequest setHTTPBody:[noteDataString dataUsingEncoding:NSUTF8StringEncoding]];
        
        NSURLSessionDataTask * dataTask = [defaultSession dataTaskWithRequest:urlRequest completionHandler:^(NSData *dataRaw, NSURLResponse *header, NSError *error) {
        NSDictionary *json = [NSJSONSerialization
        JSONObjectWithData:dataRaw
        options:kNilOptions error:&error];
        NSString *status = json[@"status"];
        
        if([status isEqual:@"1"]){
        //Success
        
        } else {
        //Error
        
        }
        }];
        
        [dataTask resume];
    }
*/

    func textFieldDidBeginEditing(textField: UITextField) {
        // Disable the Save button while editing.
        button_signUp.enabled = false
    }
    func validate(_firstName: String, _lastName: String, _createPassword: String, _confirmPassword: String, _email: String)
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
            text_confirmPassword.clearsOnBeginEditing = true;
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
        text_firstName.resignFirstResponder()
        text_lastName.resignFirstResponder()
        text_email.resignFirstResponder()
    }
    
 /*   override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "loginSuccess" {
            
            let product = products[0]
            
            return Products.store.isProductPurchased(product.productIdentifier)
        }
        
        return true
    }
  */  
}