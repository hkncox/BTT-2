//
//  LessonViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class LessonViewController: UIViewController {

    @IBOutlet weak var lbl_exerciseNum: UILabel!
   
    @IBOutlet weak var lbl_duration: UILabel!
    @IBOutlet weak var lbl_frequency: UILabel!
    @IBOutlet weak var lbl_instructions: UITextView!
    @IBOutlet weak var lbl_tips: UITextView!
    var space: String = " - "
    
     var exercise: Exercise!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_exerciseNum.text = "\(exercise.exerciseNumber) - \(exercise.title)"
        lbl_duration.text = exercise.duration
        lbl_instructions.text = exercise.instructions
        lbl_tips.text = exercise.tips
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
