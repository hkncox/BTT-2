//
//  LessonCreator.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class LessonCreator{
 //   var av: AVPlayerViewController =
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
    var exercise1Instructions: String = "Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \nTouch: Hold a tongue depressor straight up and down touching the tip of your tongue. \n Tap: Tap the tip of your tongue with the tongue depressor for 30 seconds"
    var exercise1Tips: String = "1. Look at your tongue in a mirror during the entire exercise. 2. Make sure you hold the tongue depressor vertically, not horizontally. 3. Keep your tongue as relaxed as possible during the entire 30 seconds."
    func createWeek1Exercises (){
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tap Tips", duration: duration_30sec, frequency: freq_3x7, instructions: exercise1Instructions, tips: exercise1Tips, exerciseNumber: "Exercise 1")!)
        
        
    }
    func createWeek1() {
        weeks.append(Week(weekNumber: "Week 1", exercises: week1Exercises, complete: false)!)
    }

      /*  init() {
           
            for _ in 0..<9{
                createWeeks()
            }
    }*/
}
