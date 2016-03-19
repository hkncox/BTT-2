//
//  DatabaseModel.swift
//  BTT-2
//
//  Created by Nicole Talley on 3/11/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import Foundation


protocol DatabaseProtocol: class {
    func itemsDownloaded(items: NSArray)
}


class DatabaseModel: NSObject, NSURLSessionDataDelegate {
    
    //properties
    
    weak var delegate: DatabaseProtocol!
    
    var data: NSMutableData = NSMutableData()
    
    let urlPath: String = "http://www.utahscommunicationconnection.com/service.php"


func downloadItems() {
    
    let url: NSURL = NSURL(string: urlPath)!
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
        let users: NSMutableArray = NSMutableArray()
        
        for(var i = 0; i < jsonResult.count; i++)
        {
            let user = User()
            jsonElement = jsonResult[i] as! NSDictionary
            
            //the following insures none of the JsonElement values are nil through optional binding
            if let firstName = jsonElement["First Name"] as? String,
                let lastName = jsonElement["Last Name"] as? String,
                let email = jsonElement["Email Address"] as? String,
                let password = jsonElement["Password"] as? String,
                let accountType = jsonElement["Account Type"] as? String
            {
                
                user.firstName = firstName
                user.lastName = lastName
                user.email = email
                user.password = password
                user.accountType = accountType
                
            }
            
            users.addObject(user)
            
        }
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            
            self.delegate.itemsDownloaded(users)
            
        })
    }
  }