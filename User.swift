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
    var account_type: String = String() //maybe enum? Single user, therapist, or Patient. How to use inheritence with database?
    //for therapist and single user
    var payment: Bool = false
    
    //for therapist
    var patients: [User] = [User]()
    
    //for patients
    var accessCode: Int = Int()
    
    //patient/therapist relationship maybe needs to be in release #2
   }

