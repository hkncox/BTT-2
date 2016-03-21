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