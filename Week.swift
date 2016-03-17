//
//  Week.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class Week{
    var weekNumber: String?
    var exercises = [Exercise]()
    var complete: Bool?
    
    init? (weekNumber: String, exercises: [Exercise], complete: Bool)
    {
        self.weekNumber = weekNumber
        self.exercises = exercises
        self.complete = complete
    }
    init (weekNumber: String, exercises: [Exercise])
    {
        self.weekNumber = weekNumber
        self.exercises = exercises
    }
    
}
