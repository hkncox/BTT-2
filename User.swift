//
//  User.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/7/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class User: NSObject{
    var firstName = ""
    var lastName = ""
    var userName = ""
    var password = ""
    var email = ""
    init(_firstName: String, _lastName: String, _userName: String, _password: String, _email: String)
    {
        firstName = _firstName;
        lastName = _lastName;
        userName = _userName;
        password = _password;
        email = _email;
    }
}
