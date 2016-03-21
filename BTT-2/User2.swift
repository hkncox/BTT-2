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
    var week1Complete: [Bool]?
    var week2Complete: [Bool]?
    var week3Complete: [Bool]?
    var week4Complete: [Bool]?
    var week5Complete: [Bool]?
    var week6Complete: [Bool]?
    var week7Complete: [Bool]?
    var week8Complete: [Bool]?
    var week9Complete: [Bool]?
    let THREE = 3
  //  let FOUR = 4
    override init(){
        super.init()
    }
    init(firstName: String, lastName: String, accountType: String, accessCode: String, therapistID: String){
        super.init(firstName: firstName, lastName: lastName, accountType: accountType)
        self.accessCode = accessCode
        self.therapistID = therapistID
      /*  for (var i = 0; i < THREE; i++){
            self.week1Complete![i] = false
            self.week2Complete![i] = false
            self.week3Complete![i] = false
            self.week4Complete![i] = false
            self.week5Complete![i] = false
            self.week6Complete![i] = false
            self.week7Complete![i] = false
            self.week8Complete![i] = false
            self.week9Complete![i] = false
        }
        self.week2Complete![THREE] = false
        self.week3Complete![THREE] = false
        self.week6Complete![THREE] = false
        self.week7Complete![THREE] = false
        self.week7Complete![THREE + 1] = false
        self.week8Complete![THREE] = false
        self.week8Complete![THREE + 1] = false*/
    }
    
}