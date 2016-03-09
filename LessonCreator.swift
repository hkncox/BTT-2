//
//  LessonCreator.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

let sharedInstance = LessonCreator()

class LessonCreator: NSObject{
 //   var av: AVPlayerViewController =
   
    class func getInstance() -> LessonCreator
    {
            
        return sharedInstance
    }
    
   var weeks = [Week]()
    var week1Exercises = [Exercise]()
     var week2Exercises = [Exercise]()
     var week3Exercises = [Exercise]()
     var week4Exercises = [Exercise]()
     var week5Exercises = [Exercise]()
     var week6Exercises = [Exercise]()
     var week7Exercises = [Exercise]()
     var week8Exercises = [Exercise]()
    var week9Exercises = [Exercise]()
    var freq_3x7: String = "Three times a day for seven days"
    var duration_30sec: String = "30 Seconds"
    var exercise1Instructions: String = "Tips for this exercise: \n1. Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \n2. Touch: Hold a tongue depressor straight up and down touching the tip of your tongue. \n3. Tap: Tap the tip of your tongue with the tongue depressor for 30 seconds"
    var exercise1Tips: String = "1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure you hold the tongue depressor vertically, not horizontally. \n3. Keep your tongue as relaxed as possible during the entire 30 seconds."

    var exercise2Instructions: String = "1. Tongue Out: Stick your tongue way out of your mouth. \n2. Tongue Lift: While sticking your tongue out – curl the tip up slightly and lift the sides and bottom of your tongue up off of the bottom of your mouth, teeth, and lips. \n3. Stroke 1: Using a tongue depressor stroke one side of your tongue starting at the back of the tongue and pulling the tongue depressor toward the tip of your tongue. \n4. Stroke 2: Complete the previous step on the other side or your tongue."
    var exercise2Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to hold your tongue out of your mouth as much as possible during the entire exercise. Do not let your tongue tip follow the tongue depressor back into your mouth. \n3. Make sure to hold your tongue up off of your bottom lips and teeth as much as possible during the entire exercise. \n4. If you have a hard time lifting your tongue out and up, try holding the tongue depressor out in front of your mouth and bringing the tip of your tongue out to touch it."

    var exercise3Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Suck Up: Suck your tongue against the roof of your mouth. \n3. Stretch: Open your mouth as wide as you can, stretching your frenum (or the small band of tissue that connects the underside of your tongue to the floor of your mouth) for 10 seconds. \n4. Pop: Pull your tongue down hard so that your tongue makes a loud popping sound."
    var exercise3Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. If you have a hard time figuring out how to suck your tongue up to the roof of your mouth – try clicking your tongue. Watch how your tongue sucks up to the roof of your mouth each time you click your tongue. Try to slow down the movement and hold your tongue up against the roof of your mouth for longer. \n3. When stretching your frenum, make sure that it appears skinny (like a thread). The skinnier it looks – the better your suction is. If you have a difficult time keeping it skinny – just try to make it skinnier by sucking harder each day. \n4. Make sure that when you pop your tongue down it is loud. The louder it is, the better it is working your muscles. If you have difficulty with this at first just try to make it a little louder each day."

    
    
    
    
    func createWeek1Exercises () -> [Exercise]{
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tap Tips", duration: duration_30sec, frequency: freq_3x7, instructions: exercise1Instructions, tips: exercise1Tips, exerciseNumber: "Exercise 1")!)
    
    
        return week1Exercises
        
    }
    func createWeeks() {
        weeks.append(Week(weekNumber: "Week 1", exercises: createWeek1Exercises(), complete: false)!)
    }

      /*  init() {
           
            for _ in 0..<9{
                createWeeks()
            }
    }*/
}
