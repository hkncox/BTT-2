//
//  User2.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/7/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import Foundation

class User: NSObject{
    
    var firstName: String?
    var lastName: String?
  
    var accountType: String?
  //  var patients: [Patient]?
    
    //for patients
    //patient/therapist relationship maybe needs to be in release #2
    override init(){
    }
    //Therapist Initializer w/ no patients or Single User
    init(firstName: String, lastName: String, accountType: String){
        self.firstName = firstName
        self.lastName = lastName
     
        self.accountType = accountType
    }
 }


class Therapist: User {
    var password: String?
    var email: String?
      //for therapist
    var patients: [Patient]?
    override init(){
      super.init()
    }
    init(firstName: String, lastName: String, accountType: String, email: String, password: String, patients: [Patient]){
        super.init(firstName: firstName, lastName: lastName, accountType: accountType)
        self.password = password
        self.email = email
        self.patients = patients
    }
    init(firstName: String, lastName: String, accountType: String, email: String, password: String){
        super.init(firstName: firstName, lastName: lastName, accountType: accountType)
        self.password = password
        self.email = email
    }
    
}
class SingleUser: User {
    var password: String?
    var email: String?
    //for therapist
   
    override init(){
        super.init()
    }
    init(firstName: String, lastName: String, accountType: String, email: String, password: String){
        super.init(firstName: firstName, lastName: lastName, accountType: accountType)
        self.password = password
        self.email = email
        }
    
}
class Patient: User{
    var accessCode: String?
    var therapistID: String?
    var week1E1Complete: [[Bool]]?
    var week1E2Complete: [[Bool]]?
    var week1E3Complete: [[Bool]]?
    var week2E1Complete: [[Bool]]?
    var week2E2Complete: [[Bool]]?
    var week2E3Complete: [[Bool]]?
    var week2E4Complete: [[Bool]]?
    var week3E1Complete: [[Bool]]?
    var week3E2Complete: [[Bool]]?
    var week3E3Complete: [[Bool]]?
    var week3E4Complete: [[Bool]]?
    var week4E1Complete: [[Bool]]?
    var week4E2Complete: [[Bool]]?
    var week4E3Complete: [[Bool]]?
    var week5E1Complete: [[Bool]]?
    var week5E2Complete: [[Bool]]?
    var week5E3Complete: [[Bool]]?
    var week6E1Complete: [[Bool]]?
    var week6E2Complete: [[Bool]]?
    var week6E3Complete: [[Bool]]?
    var week6E4Complete: [[Bool]]?
    var week7E1Complete: [[Bool]]?
    var week7E2Complete: [[Bool]]?
    var week7E3Complete: [[Bool]]?
    var week7E4Complete: [[Bool]]?
    var week7E5Complete: [[Bool]]?
    var week8E1Complete: [[Bool]]?
    var week8E2Complete: [[Bool]]?
    var week8E3Complete: [[Bool]]?
    var week8E4Complete: [[Bool]]?
    var week8E5Complete: [[Bool]]?
    var week9E1Complete: [[Bool]]?
    var week9E2Complete: [[Bool]]?
    var week9E3Complete: [[Bool]]?
   // let THREE = 3?
  //  let FOUR = 4
    override init(){
        super.init()
    }
    init(firstName: String, lastName: String, accountType: String, accessCode: String, therapistID: String){
        super.init(firstName: firstName, lastName: lastName, accountType: accountType)
        self.accessCode = accessCode
        self.therapistID = therapistID
        self.week1E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week1E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week1E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week2E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week2E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week2E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week2E4Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week3E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week3E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week3E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week3E4Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week4E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week4E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week4E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week5E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week5E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week5E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week6E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week6E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week6E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week6E4Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week7E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week7E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week7E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week7E4Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week7E5Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week8E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week8E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week8E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week8E4Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week8E5Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week9E1Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week9E2Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]
        self.week9E3Complete = [[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false],[false,false,false]]

           }
    
}