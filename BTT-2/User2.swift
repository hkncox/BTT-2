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
    var password: String?
    var email: String?
    var accountType: String?
    //for patients
    //patient/therapist relationship maybe needs to be in release #2
    override init(){
    }
    init(firstName: String, lastName: String, password: String, email: String, accountType: String){
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        self.email = email
        self.accountType = accountType
    }
}


class Therapist: User {
    
    var payment: Bool = false
    
    //for therapist
    var patients: [User] = [User]()
    
}
class Patient: User {
    var accessCode: Int = Int()
    var completionTracker: [Bool] = [Bool]()
    
}