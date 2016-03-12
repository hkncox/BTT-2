//
//  LessonViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class LessonViewController: UIViewController {

    @IBOutlet weak var lbl_exerciseNum: UILabel!
   
    @IBOutlet weak var lbl_duration: UILabel!
    @IBOutlet weak var lbl_frequency: UILabel!
    @IBOutlet weak var lbl_instructions: UITextView!
    @IBOutlet weak var lbl_tips: UITextView!
    
    
    @IBOutlet weak var btn_playVideo: UIButton!
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
  
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewController: VideoViewController = segue.destinationViewController as! VideoViewController
        viewController.exercise = exercise
    }


}
