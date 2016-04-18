//
//  Assessment.swift
//  BTT-2
//
//  Created by Chad Rasmussen on 4/18/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import Foundation
class AssesmentData{
    var details: String
    var section: String
    init(section: String, details: String){
        self.details = details
        self.section = section
    }
}