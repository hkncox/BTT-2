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
    
    
    /* duration */
    var duration_30sec: String = "30 Seconds"
    var wk1exercise1Instructions: String = "Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \nTouch: Hold a tongue depressor straight up and down touching the tip of your tongue. \n Tap: Tap the tip of your tongue with the tongue depressor for 30 seconds"
    var wk1exercise1Tips: String = "1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure you hold the tongue depressor vertically, not horizontally. \n3. Keep your tongue as relaxed as possible during the entire 30 seconds."
    
    var wk1exercise2Instructions: String = ""//ADD WEEK 1 exercise 2 instruction
    var wk1exercise2Tips: String = "" //add week 1 exercise 2 tips
    
    func createWeek1Exercises () -> [Exercise]{
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tap Tips", duration: duration_30sec, frequency: freq_3x7, instructions: wk1exercise1Instructions, tips: wk1exercise1Tips, exerciseNumber: "Exercise 1")!)
        week1Exercises.append(
    
    var exercise3Week8Instructions: String = "1. Place Mint: Hold a sugarless mint inside your cheek to stimulate saliva flow. \n2. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n3. Bite Down: When you have enough saliva to swallow, bite your back teeth together. \n4. Close Lips: Close your lips, keeping them relaxed. \n5. Swallow: With your lips closed and relaxed, suck back your saliva and swallow. Make sure that your tongue does not push forward against your teeth as you swallow. \n6. Repeat: Repeat until the entire mint is gone. Do not bite or chew the mint during the exercise."
    var exercise3Week8Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. You may move the mint around in your mouth during the exercise to stimulate saliva flow, but place the mint back in your cheek before each swallow. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise4Week8Instructions: String = "1. Fill up an 8oz. glass of liquid. \n2. Choose an activity that lasts at least a half an hour, and that you can drink while completing (i.e. completing homework, watching TV, or reading). \n3. Keeping your attention on your activity, take a sip of your drink every minute or so using the 1-swallow drinking technique. \n4. Try to make the 8oz. of liquid last the entire 30 minutes."
    var exercise4Week8Tips: String = "Tips for this exercise: \n1. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise5Week8Instructions: String = "1. The Spot: As you are falling asleep each night, make sure the tip of your tongue is on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: As you are falling asleep each night, make sure your back teeth are closed tight. \n3. Close Lips: As you are falling asleep each night, make sure your lips are closed. \n4. Maintain Resting Position: Try to maintain your mouth in the correct resting position all night. \n5. Check: When you wake up in the morning, check to see if your mouth has maintained the resting position during the night."
    var exercise5Week8Tips: String = "Tips for this exercise: \n1. You will not be able to guarantee how your mouth will be positioned all night, but you can make sure you are set up for success as you fall asleep. \n2. You may not be able to close your lips and teeth if you have a cold or allergies and need to breath through your mouth. If this is the case, just try to at least hold your tongue on ‘the spot’."

    
    /* Week 9 */
    var exercise1Week9Instructions: String = "1. Food to Mouth: Bring a piece of food up to your mouth. Do not let your tongue or lips reach out for the food. \n2. Bite: Bite down on your back teeth. \n3. Chew: Chew the food with your lips gently closed and move the food back into your mouth as you chew. \n4. Bolus Formation: When you have chewed the food long enough that it sticks together. Use your lips and cheeks to suck it onto the middle of your tongue forming a bolus or ball. \n5. Check: Check the bolus in the mirror making sure it is in the middle of your tongue and not on or near the tip of your tongue. \n6. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n7. Bite: Bite down on your back teeth. \n8. Smile: Spread your lips into a wide smile. \n9. Swallow: Swallow the food making sure that your tongue does not push forward against your teeth. \n10.Check: Check to make sure you have swallowed all the food."
    var exercise1Week9Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the food to your mouth, not your mouth to the food. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week9Instructions: String = "1 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Sip: Close your lips and sip the water into your mouth (without swallowing). \n6. Smile: Spread your lips into a wide smile. \n7. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise2Week9Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all. \n3 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Swallow: Take 3 consecutive swallows of the water, keeping your tongue tip on the spot, your teeth closed, and your head straight. Then put the drink down. \nTips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. Wrap your lips around the cup, keeping your teeth closed the entire time during the drink. Don’t wrap your teeth around the drink. \n4. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise3Week9Instructions: String = "1. Place Mint: Hold a sugarless mint inside your cheek to stimulate saliva flow. \n2. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n3. Bite Down: When you have enough saliva to swallow, bite your back teeth together. \n4. Close Lips: Close your lips, keeping them relaxed. \n5. Swallow: With your lips closed and relaxed, suck back your saliva and swallow. Make sure that your tongue does not push forward against your teeth as you swallow. \n6. Repeat: Repeat until you complete 100 saliva swallows. You may need more than one mint. Do not bite or chew the mint during the exercise."
    var exercise3Week9Tips: String = "Tips for this exercise: \n1. Relax your throat. Try to swallow short quick swallows. \n2. Keep track of your swallows in 10 swallow increments, trying to complete at least 10 swallows at a time before taking a break. \n3. Complete this exercise while going about your normal routine. Complete your 100 swallows while in the shower, getting ready for the day, while driving in the car, while sitting in class or at work, etc. \n4. Realize that the large amount of correct swallows completed during this last week of the program is helping to re-establish a new muscle memory swallowing pattern which will allow you to keep swallowing correctly in the future without having to focus your attention on your swallowing. \n5. While completing all 100 swallows, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    

    
    
    
    
    func createWeek1Exercises () -> [Exercise]{
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tip Taps", duration: duration_30sec, frequency: freq_3x7, instructions: exercise1Week1Instructions, tips: exercise1Week1Tips, exerciseNumber: "Exercise 1")!)
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Side Strokes", duration: duration_10times, frequency: freq_3x7, instructions: exercise2Week1Instructions, tips: exercise2Week1Tips, exerciseNumber: "Exercise 2")!)
        week1Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Pops", duration: duration_10x10, frequency: freq_3x7, instructions: exercise3Week1Instructions, tips: exercise3Week1Tips, exerciseNumber: "Exercise 3")!)
        
        return week1Exercises
        
    }
    func createWeek2Exercises () -> [Exercise]{
        week2Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tap Tips", duration: duration_30sec, frequency: freq_3x7, instructions: wk1exercise1Instructions, tips: wk1exercise1Tips, exerciseNumber: "Exercise 1")!)
        week2Exercises.append(
            
            return week1Exercises
        
    }

    func createWeeks() {
        weeks.append(Week(weekNumber: "Week 1", exercises: createWeek1Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 2", exercises: createWeek2Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 3", exercises: createWeek3Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 4", exercises: createWeek4Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 5", exercises: createWeek5Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 6", exercises: createWeek6Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 7", exercises: createWeek7Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 8", exercises: createWeek8Exercises(), complete: false)!)
        weeks.append(Week(weekNumber: "Week 9", exercises: createWeek9Exercises(), complete: false)!)
    }

      /*  init() {
           
            for _ in 0..<9{
                createWeeks()
            }
    }*/
}
