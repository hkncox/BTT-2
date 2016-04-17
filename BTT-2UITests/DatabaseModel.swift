//
//  DatabaseModel.swift
//  BTT-2
//
//  Created by Nicole Talley on 3/11/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import Foundation


protocol DatabaseProtocol: class {
    func itemsDownloaded(items: [User])
}


class DatabaseModel: NSObject, NSURLSessionDataDelegate {
    
    //properties
    
    weak var delegate: DatabaseProtocol!
    
    var data: NSMutableData = NSMutableData()
    
  //  let urlPath: String = "http://www.utahscommunicationconnection.com/service.php"


func downloadItems() {
    
    let url: NSURL = NSURL(string: "http://www.utahscommunicationconnection.com/service.php")!
    var session: NSURLSession!
    let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
    session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
    let task = session.dataTaskWithURL(url)
    task.resume()
    
}

func URLSession(session: NSURLSession, dataTask: NSURLSessionDataTask, didReceiveData data: NSData) {
    self.data.appendData(data);
    
}

func URLSession(session: NSURLSession, task: NSURLSessionTask, didCompleteWithError error: NSError?) {
    if error != nil {
        print("Failed to download data")
    }else {
        print("Data downloaded")
        self.parseJSON()
    }
    
}

    func addToDB(dict: NSDictionary) {
      //  var err: NSError?
        let request = NSMutableURLRequest(URL: NSURL(string:"http://www.utahscommunicationconnection.com/postService.php")!)
      //  let dataDict : NSData = dict as! NSData
        // Set the method to POST
        request.HTTPMethod = "POST"
        do {
            if let data = try NSJSONSerialization.dataWithJSONObject(dict, options: []) as? NSData{
                request.HTTPBody = data
                let session = NSURLSession.sharedSession()
                
                let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
                    //  let json:JSON = JSON(data: data)
                    // onCompletion(json, err)
                })
                task.resume()
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }

        // Set the POST body for the request
        
    }
    /*
    func addToDB(dict: NSData){
    
            
            // Create a request
            let url:NSURL = NSURL(string: "http://www.utahscommunicationconnection.com/postService.php")!
            
            let request:NSMutableURLRequest = NSMutableURLRequest(URL: url)
            
            // Configure the request
            request.HTTPMethod = "POST"
            
      //      var dataDictionary:[String:String] = [ "Email" : email, "Password" : password, "FirstName" : firstname, "LastName" : lastname, "DateOfBirth" : dob, "Gender" : gender, "QuestionId" : questionId, "Answer" : answer]
      
        do {
            if let data = try NSJSONSerialization.JSONObjectWithData(dict, options: []) as? NSDictionary {
             //   NSLOg("Registration Succesful")
               // dispatch_async(dispatch_get_main_queue()){}
            }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            request.HTTPBody = data
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            // Create a NSURLSession task with completion handler
     
            var session: NSURLSession!
            let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
            session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        let task = session.dataTaskWithRequest(request, completionHandler: { (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
            
          /* let response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as [String:String]{
                
                // Check if there was an error
                if let result = response["isRegistered"] {
                    
                    if result == "1" {
                        //NSLog("Inserted")
                        NSLog("Registration Successful")
                        
                        dispatch_async(dispatch_get_main_queue()) {
                            
                            //self.performSegueWithIdentifier("loginSegue", sender: self)
                          //  self.performSegueWithIdentifier("cancelSegue", sender: self)
                            
                            
                        }
                    }
                    else {
                        NSLog("Registration Failed")
                        
                        dispatch_async(dispatch_get_main_queue()) {
                            
                            //self.showAllert(result)
                            
                        }
                    }
                }
            })*/
            
            task.resume()
            }
*/       /* var data:NSData = NSJSONSerialization.dataWithJSONObject(data: dict, options: nil, error: nil)!
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
        
        [dataTask resume];*/
    

    func parseJSON() {
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(self.data, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement: NSDictionary = NSDictionary()
        var users: [User] = [User]()
        
        for(var i = 0; i < jsonResult.count; i++)
        {
           // let user = User()
            jsonElement = jsonResult[i] as! NSDictionary
            
            //the following insures none of the JsonElement values are nil through optional binding
            guard let firstName = jsonElement["firstName"] as? String,
               lastName = jsonElement["lastName"] as? String,
          //      email = jsonElement["email"] as? String,
            //   password = jsonElement["password"] as? String,
                accountType = jsonElement["accountType"] as? String
                else{
                    print("error")
                    return
                }
                if (accountType == "Therapist")
                {
                    guard let email = jsonElement["email"] as? String,
                    let password = jsonElement["password"] as? String
                        else{
                            print("error")
                            return
                        }
                    users.append(Therapist(firstName: firstName, lastName: lastName, accountType: "Therapist", email: email, password: password ))
                    
                }
                if (accountType == "Single User")
                {
                    guard let email = jsonElement["email"] as? String,
                        let password = jsonElement["password"] as? String
                        else{
                            print("error")
                            return
                        }
                    users.append(SingleUser(firstName: firstName, lastName: lastName, accountType: "Single User", email: email, password: password ))
                
                }
            if (accountType == "Patient"){
                guard let accessCode = jsonElement["accessCode"] as? String,
                let therapistID = jsonElement["therapistID"] as? String
                    else{
                          print("error")
                            return
                    }
                users.append(Patient(firstName: firstName, lastName: lastName, accountType: "Patient", accessCode: accessCode, therapistID: therapistID ))
            }
               // users.append(User(firstName: firstName, lastName: lastName, email: email, password: password, accountType: accountType))
           /*     user.firstName = firstName
                user.lastName = lastName
                user.email = email
                user.password = password
                user.accountType = accountType
                */
            
            
         //   users.addObject(user)
            
        }
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            
            self.delegate.itemsDownloaded(users)
            
        })
    }
  }