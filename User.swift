//
//  User.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/7/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class User: NSObject{
    var firstName: String = String()
    var lastName: String = String()
    var userName: String = String()
    var password: String = String()
    var email: String = String()
    var accountType: String = String()
           //for patients
     //patient/therapist relationship maybe needs to be in release #2
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