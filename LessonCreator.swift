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
    var duration_10times: String = "10 times on each side of your tongue (20 strokes total)"
    var duration_10x10: String = "10 times for 10 seconds each time"
    var duration_10x10close: String = "10 times for 10 seconds each time (5 seconds open and 5 seconds closed)"
    var duration_20times: String = "20 Times"
    var duration_15times5x5x5: String = "15 times (5 times with a straw, 5 times without a straw, and 5 times with a straw again)"
    var duration_regular: String = "Until a regular sized drinking glass is gone"
    var duration_20times10x10: String = "20 times (10 times with squeaky sucking and 10 times with quiet sucking"
    var duration_15times: String = "15 Times"
    var duration_5foods: String = "Eat at least five different foods correctly each day"
    var duration_eating: String = "Eat everything correctly. For everything you eat at home, spread your lips wide and smile as you swallow. Use your mirror while swallowing. When eating away from home, or in front of company, lightly close your lips and make sure your tongue does not push forward against your teeth as you swallow."
    var duration_drinking: String = "Drink everything you drink correctly, using either 1-swallow drinking or 3-swallow drinking."
    var duration_1min: String = "Until 1 mint is completely dissolved and swallowed"
    var duration_30min: String = "30 minutes"
    var duration_beforeSleep: String = "Before you go to sleep and after you wake up each night"
    var duration_100: String = "Until you have completed 100 swallows"
    
    /* Frequency */
    var freq_3x7: String = "Three times a day for seven days"
    var freq_7days: String = "7 days"
    var freq_1x7: String = "Once a day for 7 days"
    
    
    
    /* Week 1 */
    var exercise1Week1Instructions: String = "1. Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \n2. Touch: Hold a tongue depressor straight up and down touching the tip of your tongue. \n3. Tap: Tap the tip of your tongue with the tongue depressor for 30 seconds"
    var exercise1Week1Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure you hold the tongue depressor vertically, not horizontally. \n3. Keep your tongue as relaxed as possible during the entire 30 seconds."
    
    var exercise2Week1Instructions: String = "1. Tongue Out: Stick your tongue way out of your mouth. \n2. Tongue Lift: While sticking your tongue out – curl the tip up slightly and lift the sides and bottom of your tongue up off of the bottom of your mouth, teeth, and lips. \n3. Stroke 1: Using a tongue depressor stroke one side of your tongue starting at the back of the tongue and pulling the tongue depressor toward the tip of your tongue. \n4. Stroke 2: Complete the previous step on the other side or your tongue."
    var exercise2Week1Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to hold your tongue out of your mouth as much as possible during the entire exercise. Do not let your tongue tip follow the tongue depressor back into your mouth. \n3. Make sure to hold your tongue up off of your bottom lips and teeth as much as possible during the entire exercise. \n4. If you have a hard time lifting your tongue out and up, try holding the tongue depressor out in front of your mouth and bringing the tip of your tongue out to touch it."
    
    var exercise3Week1Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Suck Up: Suck your tongue against the roof of your mouth. \n3. Stretch: Open your mouth as wide as you can, stretching your frenum (or the small band of tissue that connects the underside of your tongue to the floor of your mouth) for 10 seconds. \n4. Pop: Pull your tongue down hard so that your tongue makes a loud popping sound."
    var exercise3Week1Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. If you have a hard time figuring out how to suck your tongue up to the roof of your mouth – try clicking your tongue. Watch how your tongue sucks up to the roof of your mouth each time you click your tongue. Try to slow down the movement and hold your tongue up against the roof of your mouth for longer. \n3. When stretching your frenum, make sure that it appears skinny (like a thread). The skinnier it looks – the better your suction is. If you have a difficult time keeping it skinny – just try to make it skinnier by sucking harder each day. \n4. Make sure that when you pop your tongue down it is loud. The louder it is, the better it is working your muscles. If you have difficulty with this at first just try to make it a little louder each day."
    
    
    /* Week 2 */
    var exercise1Week2Instructions: String = "1. Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \n2. Touch: Hold a tongue depressor straight up and down touching the tip of your tongue. \n3. Tap: Tap the tip of your tongue with the tongue depressor for 30 seconds."
    var exercise1Week2Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure you hold the tongue depressor vertically & not horizontally. \n3. Keep your tongue as relaxed as possible during the entire 30 seconds."
    
    var exercise2Week2Instructions: String = "1. Tongue Out: Stick your tongue way out of your mouth. \n2. Tongue Lift: While sticking your tongue out – curl the tip up slightly and lift the sides and bottom of your tongue up off of the bottom of your mouth, teeth, and lips. \n3. Pull Back: Slowly pull your tongue back into your mouth – keeping it skinny as you pull it back. \n4. The Spot: After you have pulled your tongue into your mouth, lift the tip of your tongue up to “the spot” (the bumpy spot behind your top front teeth). \n5. Bite: Slowly bite down your back teeth – keeping your tongue tip on “the spot” and your tongue narrow as you bite."
    var exercise2Week2Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to hold your tongue up off of your bottom lips and teeth as much as possible during the entire exercise. \n3. If you have a hard time lifting your tongue out and up, try holding the tongue depressor out in front of your mouth and bringing the tip of your tongue out to touch it. \n4. As you complete the pull back – make sure your tongue is being pulled straight back using the back muscles in your tongue – don’t just curl the tip back to bring your tongue into your mouth."
    
    var exercise3Week2Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Suck Up: Suck your tongue against the roof of your mouth. \n3. Stretch: Open your mouth as wide as you can, stretching your frenum (or the small band of tissue that connects the underside of your tongue to the floor of your mouth) for 5 seconds.\n4. Bite: Keeping your tongue sucked up, slowly bite down and hold for 5 more seconds."
    var exercise3Week2Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. If you have a hard time figuring out how to suck your tongue up to the roof of your mouth – try clicking your tongue. Watch how your tongue sucks up to the roof of your mouth each time you click your tongue. Try to slow down the movement and hold your tongue up against the roof of your mouth for longer. \n3. When stretching your frenum, make sure that it appears skinny (like a thread). The skinnier it looks – the better your suction is. If you have a difficult time keeping it skinny – just try to make it skinnier by sucking harder each day. \n4. As you bite down, be sure not to let your tongue lose its suction power. Think about holding your tongue and the roof of your mouth still while slowly bringing your bottom jaw up to meet them."
    
    var exercise4Week2Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite your back teeth together. \n3. Feel: Place your fingers at the point where your bottom and top jaws come together (just in front of your ears) and feel the muscles tighten as you bite. Hold your bite as tight as you can for 10 seconds. Relax your bite for a few seconds before repeating."
    var exercise4Week2Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Have a parent or other individual place their fingers on one side of your jaw while you place your fingers on the other side of your jaw so you can both feel the muscles tightening."
    
    
    /* Week 3 */
    var exercise1Week3Instructions: String = "1. Tongue Out: Stick your tongue way out of your mouth. \n2. Tongue Lift: While sticking your tongue out – curl the tip up slightly and lift the sides and bottom of your tongue up off of the bottom of your mouth, teeth, and lips. \n3. Pull Back: Slowly pull your tongue back into your mouth – keeping it skinny as you pull it back. \n4. The Spot: After you have pulled your tongue into your mouth, lift the tip of your tongue up to “the spot” (the bumpy spot behind your top front teeth). \n5. Bite: Slowly bite down your back teeth – keeping your tongue tip on “the spot” and your tongue narrow as you bite."
    var exercise1Week3Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to hold your tongue up off of your bottom lips and teeth as much as possible during the entire exercise. \n3. If you have a hard time lifting your tongue out and up, try holding the tongue depressor out in front of your mouth and bringing the tip of your tongue out to touch it. \n4. As you complete the pull back – make sure your tongue is being pulled straight back using the back muscles in your tongue – don’t just curl the tip back to bring your tongue into your mouth."
    
    var exercise2Week3Instructions: String = "1. Tongue Out: Stick your tongue way out of your mouth. \n2. Tongue Lift: While sticking your tongue out – curl the tip up slightly and lift the sides and bottom of your tongue up off of the bottom of your mouth, teeth, and lips. \n3. Pull Back: Slowly pull your tongue back into your mouth – keeping it skinny as you pull it back. \n4. The Spot: After you have pulled your tongue into your mouth, lift the tip of your tongue up to “the spot” (the bumpy spot behind your top front teeth). \n5. Bite: Slowly bite down your back teeth – keeping your tongue tip on “the spot” and your tongue narrow as you bite."
    var exercise2Week3Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to hold your tongue up off of your bottom lips and teeth as much as possible during the entire exercise. \n3. If you have a hard time lifting your tongue out and up, try holding the tongue depressor out in front of your mouth and bringing the tip of your tongue out to touch it. \n4. As you complete the pull back – make sure your tongue is being pulled straight back using the back muscles in your tongue – don’t just curl the tip back to bring your tongue into your mouth."
    
    var exercise3Week3Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Suck Up: Suck your tongue against the roof of your mouth. \n3. Straw: Place a straw horizontally directly behind your top front teeth and bite down. Do not let your tongue touch any part of the straw. \n4. Smile: Spread your lips into a wide smile and hold them there for the remainder of the exercise (even during the swallow). \n5. Squirt: Using a squirt bottle, spray a few squirts of water into both corners of your mouth. \n6. Slurp: Slurp the water back hard (keeping your mouth in a smile) \n7. Swallow: Swallow the water keeping your tongue tip on “the spot”, the rest of your tongue against the roof of your mouth, and your lips spread wide in a smile. \n8. Repeat: Repeat these steps 5 times with the straw, 5 times without the straw, and then 5 times again with the straw."
    var exercise3Week3Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. While swallowing your tongue should not push against the straw or your teeth. Your tongue should not push forward at all. \n3. Once you begin the swallow repetitions make sure to keep your mouth in a smile the entire time. Closing your lips between repetitions can result in quick and thrusted swallows that will end up ultimately un-doing all the work you have completed toward a new correct swallow pattern."
    
    var exercise4Week3Instructions: String = "1. Tongue Out: Stick your tongue out – letting it rest on your bottom lip. \n2. Tongue Bowl: Gently raise the side and tip of your tongue to create a “bowl” shape. \n3. Squirt: Using a squirt bottle, spray a few squirts of water into the “bowl” your tongue has created. \n4. Pull Back: Slowly pull your tongue back into your mouth – keeping it in a “bowl” shape as you pull it back. \n5. The Spot: After you have pulled your tongue into your mouth, lift the tip of your tongue up to “the spot” (the bumpy spot behind your top front teeth). \n6. Bite: Slowly bite down your back teeth – keeping your tongue tip on “the spot” as you bite down. \n7. Smile: Spread your lips into a wide smile and hold them there. \n8. Swallow: Swallow the water keeping your tongue tip on “the spot”, and squeezing the middle of your tongue up against the roof of your mouth."
    var exercise4Week3Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. As you complete the pull back – make sure your tongue is being pulled straight back using the back muscles in your tongue – don’t just curl the tip back to bring your tongue into your mouth. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    
    /* Week 4 */
    var exercise1Week4Instructions: String = "1. Relax: Let your tongue relax on the floor of your mouth, inside your bottom teeth. \n2. Head Back: Tip your head back while completing this exercise. \n3. Squirt: Squirt water into the back of your mouth. \n4. Back Up: While holding the tip of your tongue on the floor of your mouth, raise the back of your tongue up to the roof of your mouth like you are going to say /k/. \n5. Middle Up: While holding the back of your tongue up, lift the middle of your tongue up to the roof of your mouth like you are going to say /ee/. \n6. Tip Up: While holding the back and middle of your tongue up to the roof of your mouth, raise the tip of your tongue up to the bumpy spot behind your top front teeth like you are going to say /l/. \n7. Bite: While holding your tongue up, bite down with your back teeth. \n8. Smile: Spread your lips wide into a smile. \n9. Squirt: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise1Week4Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. If you have difficulty bringing the back, middle, or tip of your tongue up to the correct spot try actually saying the sounds /k/-/ee/-/l/ to move your tongue up. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week4Instructions: String = "1. Place Food: Place a small amount of soft food in the middle of your tongue (applesauce, pudding, yogurt, etc.). \n2. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n3. Bite: Bite down on your back teeth. \n4. Smile: Spread your lips into a wide smile. \n5. Squeeze: Squeeze your tongue up against the roof of your mouth. \n6. Swallow: Swallow the food. \n7. Check: Look at your tongue in the mirror to see how much of the food you swallowed."
    var exercise2Week4Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. When using a spoon to place the food in your mouth, it is the easiest to put the spoon in your mouth and then turn it upside down to scrape the food onto the middle of your tongue. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise3Week4Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Swallow: Take 3 consecutive swallows of the water, keeping your tongue tip on the spot, your teeth closed, and your head straight. Then put the drink down."
    var exercise3Week4Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. Wrap your lips around the cup, keeping your teeth closed the entire time during the drink. Don’t wrap your teeth around the drink. \n4. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    
    /* Week 5 */
    var exercise1Week5Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Smile: Spread your lips into a wide smile. \n4. Squirt: Squirt water into the corners of your mouth. \n5. Close Lips: Gently close your lips. \n6. Suck Back: Suck the water back making a squeaking sound. \n7. Smile: Spread your lips into a wide smile. \n8. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth. \n9. Repeat: Repeat these steps 10 times with squeaky sucking and 10 times with quiet sucking."
    var exercise1Week5Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Try not to let the muscles around your lips and in your chin move while you suck and swallow. Use the muscles in the back of your tongue and in your throat to swallow. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week5Instructions: String = "1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Sip: Close your lips and sip the water into your mouth (without swallowing). \n6. Smile: Spread your lips into a wide smile. \n7. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise2Week5Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise3Week5Instructions: String = "1. Food to Mouth: Bring a piece of food up to your mouth. Do not let your tongue or lips reach out for the food. \n2. Bite: Bite down on your back teeth. \n3. Chew: Chew the food with your lips gently closed and move the food back into your mouth as you chew. \n4. Bolus Formation: When you have chewed the food long enough that it sticks together. Use your lips and cheeks to suck it onto the middle of your tongue forming a bolus or ball. \n5. Check: Check the bolus in the mirror making sure it is in the middle of your tongue and not on or near the tip of your tongue. \n6. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n7. Bite: Bite down on your back teeth. \n8. Smile: Spread your lips into a wide smile. \n9. Swallow: Swallow the food making sure that your tongue does not push forward against your teeth. \n10. Check: Check to make sure you have swallowed all the food."
    var exercise3Week5Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the food to your mouth, not your mouth to the food. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    
    /* Week 6 */
    var exercise1Week6Instructions: String = "1. Food to Mouth: Bring a piece of food up to your mouth. Do not let your tongue or lips reach out for the food. \n2. Bite: Bite down on your back teeth. \n3. Chew: Chew the food with your lips gently closed and move the food back into your mouth as you chew. \n4. Bolus Formation: When you have chewed the food long enough that it sticks together. Use your lips and cheeks to suck it onto the middle of your tongue forming a bolus or ball. \n5. Check: Check the bolus in the mirror making sure it is in the middle of your tongue and not on or near the tip of your tongue. \n6. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n7. Bite: Bite down on your back teeth. \n8. Smile: Spread your lips into a wide smile. \n9. Swallow: Swallow the food making sure that your tongue does not push forward against your teeth. \n10. Check: Check to make sure you have swallowed all the food."
    var exercise1Week6Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the food to your mouth, not your mouth to the food. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week6Instructions: String = "1 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Sip: Close your lips and sip the water into your mouth (without swallowing). \n6. Smile: Spread your lips into a wide smile. \n7. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise2Week6Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all. \n3 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Swallow: Take 3 consecutive swallows of the water, keeping your tongue tip on the spot, your teeth closed, and your head straight. Then put the drink down. \nTips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. Wrap your lips around the cup, keeping your teeth closed the entire time during the drink. Don’t wrap your teeth around the drink. \n4. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise3Week6Instructions: String = "1. Place Mint: Hold a sugarless mint inside your cheek to stimulate saliva flow. \n2. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n3. Bite Down: When you have enough saliva to swallow, bite your back teeth together. \n4. Close Lips: Close your lips, keeping them relaxed. \n5. Swallow: With your lips closed and relaxed, suck back your saliva and swallow. Make sure that your tongue does not push forward against your teeth as you swallow. \n6. Repeat: Repeat until the entire mint is gone. Do not bite or chew the mint during the exercise."
    var exercise3Week6Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. You may move the mint around in your mouth during the exercise to stimulate saliva flow, but place the mint back in your cheek before each swallow. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise4Week6Instructions: String = "1. Fill up an 8oz. glass of liquid. \n2. Choose an activity that lasts at least a half an hour, and that you can drink while completing (i.e. completing homework, watching TV, or reading). \n3. Keeping your attention on your activity, take a sip of your drink every minute or so using the 1-swallow drinking technique. \n4. Try to make the 8oz. of liquid last the entire 30 minutes."
    var exercise4Week6Tips: String = "Tips for this exercise: \n1. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    
    
    /* Week 7 */
    var exercise1Week7Instructions: String = "1. Food to Mouth: Bring a piece of food up to your mouth. Do not let your tongue or lips reach out for the food. \n2. Bite: Bite down on your back teeth. \n3. Chew: Chew the food with your lips gently closed and move the food back into your mouth as you chew. \n4. Bolus Formation: When you have chewed the food long enough that it sticks together. Use your lips and cheeks to suck it onto the middle of your tongue forming a bolus or ball. \n5. Check: Check the bolus in the mirror making sure it is in the middle of your tongue and not on or near the tip of your tongue. \n6. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n7. Bite: Bite down on your back teeth. \n8. Smile: Spread your lips into a wide smile. \n9. Swallow: Swallow the food making sure that your tongue does not push forward against your teeth. \n10. Check: Check to make sure you have swallowed all the food."
    var exercise1Week7Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the food to your mouth, not your mouth to the food. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week7Instructions: String = "1 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Sip: Close your lips and sip the water into your mouth (without swallowing). \n6. Smile: Spread your lips into a wide smile. \n7. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise2Week7Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all. \n3 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Swallow: Take 3 consecutive swallows of the water, keeping your tongue tip on the spot, your teeth closed, and your head straight. Then put the drink down. \nTips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. Wrap your lips around the cup, keeping your teeth closed the entire time during the drink. Don’t wrap your teeth around the drink. \n4. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise3Week7Instructions: String = "1. Place Mint: Hold a sugarless mint inside your cheek to stimulate saliva flow. \n2. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n3. Bite Down: When you have enough saliva to swallow, bite your back teeth together. \n4. Close Lips: Close your lips, keeping them relaxed. \n5. Swallow: With your lips closed and relaxed, suck back your saliva and swallow. Make sure that your tongue does not push forward against your teeth as you swallow. \n6. Repeat: Repeat until the entire mint is gone. Do not bite or chew the mint during the exercise."
    var exercise3Week7Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. You may move the mint around in your mouth during the exercise to stimulate saliva flow, but place the mint back in your cheek before each swallow. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise4Week7Instructions: String = "1. Fill up an 8oz. glass of liquid. \n2. Choose an activity that lasts at least a half an hour, and that you can drink while completing (i.e. completing homework, watching TV, or reading). \n3. Keeping your attention on your activity, take a sip of your drink every minute or so using the 1-swallow drinking technique. \n4. Try to make the 8oz. of liquid last the entire 30 minutes."
    var exercise4Week7Tips: String = "Tips for this exercise: \n1. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise5Week7Instructions: String = "1. The Spot: As you are falling asleep each night, make sure the tip of your tongue is on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: As you are falling asleep each night, make sure your back teeth are closed tight. \n3. Close Lips: As you are falling asleep each night, make sure your lips are closed. \n4. Maintain Resting Position: Try to maintain your mouth in the correct resting position all night. \n5. Check: When you wake up in the morning, check to see if your mouth has maintained the resting position during the night."
    var exercise5Week7Tips: String = "Tips for this exercise: \n1. You will not be able to guarantee how your mouth will be positioned all night, but you can make sure you are set up for success as you fall asleep. \n2. You may not be able to close your lips and teeth if you have a cold or allergies and need to breath through your mouth. If this is the case, just try to at least hold your tongue on ‘the spot’."
    
    
    /* Week 8 */
    var exercise1Week8Instructions: String = "1. Food to Mouth: Bring a piece of food up to your mouth. Do not let your tongue or lips reach out for the food. \n2. Bite: Bite down on your back teeth. \n3. Chew: Chew the food with your lips gently closed and move the food back into your mouth as you chew. \n4. Bolus Formation: When you have chewed the food long enough that it sticks together. Use your lips and cheeks to suck it onto the middle of your tongue forming a bolus or ball. \n5. Check: Check the bolus in the mirror making sure it is in the middle of your tongue and not on or near the tip of your tongue. \n6. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n7. Bite: Bite down on your back teeth. \n8. Smile: Spread your lips into a wide smile. \n9. Swallow: Swallow the food making sure that your tongue does not push forward against your teeth. \n10. Check: Check to make sure you have swallowed all the food."
    var exercise1Week8Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the food to your mouth, not your mouth to the food. \n3. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
    var exercise2Week8Instructions: String = "1 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Sip: Close your lips and sip the water into your mouth (without swallowing). \n6. Smile: Spread your lips into a wide smile. \n7. Swallow: Swallow the water making sure that your tongue does not push forward against your teeth."
    var exercise2Week8Tips: String = "Tips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. While swallowing, your tongue should not push against or past your teeth. Your tongue should not push forward at all. \n3 Swallow Drinking \n1. The Spot: Put the tip of your tongue on the bumpy spot behind your top front teeth (the alveolar ridge). \n2. Bite: Bite down on your back teeth. \n3. Head Straight: Hold your head straight. \n4. Raise Drink: Raise the drink up to your mouth. \n5. Swallow: Take 3 consecutive swallows of the water, keeping your tongue tip on the spot, your teeth closed, and your head straight. Then put the drink down. \nTips for this exercise: \n1. Look at your tongue in a mirror during the entire exercise. \n2. Make sure to bring the drink to your mouth, not your mouth to the drink. \n3. Wrap your lips around the cup, keeping your teeth closed the entire time during the drink. Don’t wrap your teeth around the drink. \n4. While swallowing your tongue should not push against or past your teeth. Your tongue should not push forward at all."
    
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
    
    func createWeek2Exercises() -> [Exercise]{
        week2Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tip Taps", duration: duration_30sec, frequency: freq_3x7, instructions: exercise1Week2Instructions, tips: exercise1Week2Tips, exerciseNumber: "Exercise 1")!)
        week2Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Pull Backs", duration: duration_20times, frequency: freq_3x7, instructions: exercise2Week2Instructions, tips: exercise2Week2Tips, exerciseNumber: "Exercise 2")!)
        week2Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Suck and Bite", duration: duration_10x10close, frequency: freq_3x7, instructions: exercise3Week2Instructions, tips: exercise3Week2Tips, exerciseNumber: "Exercise 3")!)
        week2Exercises.append(Exercise(numTimesCompleted: 0, title: "Bite Strengthening", duration: duration_10x10, frequency: freq_3x7, instructions: exercise4Week2Instructions, tips: exercise4Week2Tips, exerciseNumber: "Exercise 4")!)
        
        
        return week2Exercises
    }
    
    func createWeek3Exercises() -> [Exercise]{
        week3Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Tip Taps", duration: duration_30sec, frequency: freq_3x7, instructions: exercise1Week3Instructions, tips: exercise1Week3Tips, exerciseNumber: "Exercise 1")!)
        week3Exercises.append(Exercise(numTimesCompleted: 0, title: "Tongue Pull Backs", duration: duration_20times, frequency: freq_3x7, instructions: exercise2Week3Instructions, tips: exercise2Week3Tips, exerciseNumber: "Exercise 2")!)
        week3Exercises.append(Exercise(numTimesCompleted: 0, title: "Straw Swallows", duration: duration_15times5x5x5, frequency: freq_3x7, instructions: exercise3Week3Instructions, tips: exercise3Week3Tips, exerciseNumber: "Exercise 3")!)
        week3Exercises.append(Exercise(numTimesCompleted: 0, title: "Bowl Swallows", duration: duration_15times, frequency: freq_3x7, instructions: exercise4Week3Instructions, tips: exercise4Week3Tips, exerciseNumber: "Exercise 4")!)
        
        return week3Exercises
    }
    
    func createWeek4Exercises() -> [Exercise]{
        week4Exercises.append(Exercise(numTimesCompleted: 0, title: "K-EE-L Rolls", duration: duration_15times, frequency: freq_3x7, instructions: exercise1Week4Instructions, tips: exercise1Week4Tips, exerciseNumber: "Exercise 1")!)
        week4Exercises.append(Exercise(numTimesCompleted: 0, title: "Soft Food Swallows", duration: duration_15times, frequency: freq_3x7, instructions: exercise2Week4Instructions, tips: exercise2Week4Tips, exerciseNumber: "Exercise 2")!)
        week4Exercises.append(Exercise(numTimesCompleted: 0, title: "3-Swallow Drinking", duration: duration_regular, frequency: freq_3x7, instructions: exercise3Week4Instructions, tips: exercise3Week4Tips, exerciseNumber: "Exercise 3")!)
        
        return week4Exercises
    }
    
    func createWeek5Exercises() -> [Exercise]{
        week5Exercises.append(Exercise(numTimesCompleted: 0, title: "Suck and Swallow", duration: duration_20times10x10, frequency: freq_3x7, instructions: exercise1Week5Instructions, tips: exercise1Week5Tips, exerciseNumber: "Exercise 1")!)
        week5Exercises.append(Exercise(numTimesCompleted: 0, title: "1-Swallow Drinking", duration: duration_15times, frequency: freq_3x7, instructions: exercise2Week5Instructions, tips: exercise2Week5Tips, exerciseNumber: "Exercise 2")!)
        week5Exercises.append(Exercise(numTimesCompleted: 0, title: "Eating", duration: duration_5foods, frequency: freq_7days, instructions: exercise3Week5Instructions, tips: exercise3Week5Tips, exerciseNumber: "Exercise 3")!)
        
        
        return week5Exercises
    }
    
    func createWeek6Exercises() -> [Exercise]{
        week6Exercises.append(Exercise(numTimesCompleted: 0, title: "Eating", duration: duration_eating, frequency: freq_3x7, instructions: exercise1Week6Instructions, tips: exercise1Week6Tips, exerciseNumber: "Exercise 1")!)
        week6Exercises.append(Exercise(numTimesCompleted: 0, title: "Drinking", duration: duration_drinking, frequency: freq_3x7, instructions: exercise2Week6Instructions, tips: exercise2Week6Tips, exerciseNumber: "Exercise 2")!)
        week6Exercises.append(Exercise(numTimesCompleted: 0, title: "Saliva Swallows", duration: duration_1min, frequency: freq_3x7, instructions: exercise3Week6Instructions, tips: exercise3Week6Tips, exerciseNumber: "Exercise 3")!)
        week6Exercises.append(Exercise(numTimesCompleted: 0, title: "30 Minute Drinking", duration: duration_30min, frequency: freq_1x7, instructions: exercise4Week6Instructions, tips: exercise4Week6Tips, exerciseNumber: "Exercise 4")!)
        
        return week6Exercises
    }
    
    func createWeek7Exercises() -> [Exercise]{
        week7Exercises.append(Exercise(numTimesCompleted: 0, title: "Eating", duration: duration_eating, frequency: freq_3x7, instructions: exercise1Week7Instructions, tips: exercise1Week7Tips, exerciseNumber: "Exercise 1")!)
        week7Exercises.append(Exercise(numTimesCompleted: 0, title: "Drinking", duration: duration_drinking, frequency: freq_3x7, instructions: exercise2Week7Instructions, tips: exercise2Week7Tips, exerciseNumber: "Exercise 2")!)
        week7Exercises.append(Exercise(numTimesCompleted: 0, title: "Saliva Swallows", duration: duration_1min, frequency: freq_3x7, instructions: exercise3Week7Instructions, tips: exercise3Week7Tips, exerciseNumber: "Exercise 3")!)
        week7Exercises.append(Exercise(numTimesCompleted: 0, title: "30 Minute Drinking", duration: duration_30min, frequency: freq_1x7, instructions: exercise4Week7Instructions, tips: exercise4Week7Tips, exerciseNumber: "Exercise 4")!)
        week7Exercises.append(Exercise(numTimesCompleted: 0, title: "Sleep Swallowing", duration: duration_beforeSleep, frequency: freq_1x7, instructions: exercise5Week7Instructions, tips: exercise5Week7Tips, exerciseNumber: "Exercise 5")!)
        
        return week7Exercises
    }
    
    func createWeek8Exercises() -> [Exercise]{
        week8Exercises.append(Exercise(numTimesCompleted: 0, title: "Eating", duration: duration_eating, frequency: freq_3x7, instructions: exercise1Week8Instructions, tips: exercise1Week8Tips, exerciseNumber: "Exercise 1")!)
        week8Exercises.append(Exercise(numTimesCompleted: 0, title: "Drinking", duration: duration_drinking, frequency: freq_3x7, instructions: exercise2Week8Instructions, tips: exercise2Week8Tips, exerciseNumber: "Exercise 2")!)
        week8Exercises.append(Exercise(numTimesCompleted: 0, title: "Saliva Swallows", duration: duration_1min, frequency: freq_3x7, instructions: exercise3Week8Instructions, tips: exercise3Week8Tips, exerciseNumber: "Exercise 3")!)
        week8Exercises.append(Exercise(numTimesCompleted: 0, title: "30 Minute Drinking", duration: duration_30min, frequency: freq_1x7, instructions: exercise4Week8Instructions, tips: exercise4Week8Tips, exerciseNumber: "Exercise 4")!)
        week8Exercises.append(Exercise(numTimesCompleted: 0, title: "Sleep Swallowing", duration: duration_beforeSleep, frequency: freq_1x7, instructions: exercise5Week8Instructions, tips: exercise5Week8Tips, exerciseNumber: "Exercise 5")!)
        
        return week8Exercises
    }
    
    func createWeek9Exercises() -> [Exercise]{
        week9Exercises.append(Exercise(numTimesCompleted: 0, title: "Eating", duration: duration_eating, frequency: freq_3x7, instructions: exercise1Week9Instructions, tips: exercise1Week9Tips, exerciseNumber: "Exercise 1")!)
        week9Exercises.append(Exercise(numTimesCompleted: 0, title: "Drinking", duration: duration_drinking, frequency: freq_3x7, instructions: exercise2Week9Instructions, tips: exercise2Week9Tips, exerciseNumber: "Exercise 2")!)
        week9Exercises.append(Exercise(numTimesCompleted: 0, title: "100 Saliva Swallows", duration: duration_100, frequency: freq_3x7, instructions: exercise3Week9Instructions, tips: exercise3Week9Tips, exerciseNumber: "Exercise 3")!)
        
        return week9Exercises
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