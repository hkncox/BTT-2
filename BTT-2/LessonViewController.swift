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
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet weak var btn_playVideo: UIButton!
     var exercise: Exercise!
       override func viewDidLoad() {
        super.viewDidLoad()
        if (exercise.title == "Resting Position" || exercise.title == "The Spot"){
            lbl_exerciseNum.text = "\(exercise.title)"
        }
        else{
            lbl_exerciseNum.text = "\(exercise.exerciseNumber) - \(exercise.title)"
        }
        lbl_duration.text = "Duration: \(exercise.duration)"
        lbl_frequency.text = "Frequency: \(exercise.frequency)"
        lbl_instructions.text = exercise.instructions
        lbl_tips.text = exercise.tips
        lbl_instructions.layer.cornerRadius = 10
        lbl_tips.layer.cornerRadius = 10
    //    lbl_instructions.layer.borderColor = [UIColor blackColor].CGColor
        btn_playVideo.layer.cornerRadius = 10
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    // MARK: - Navigation
        override func prepareForSegue(segue: UIStoryboardSegue,
            sender: AnyObject?) {
                let pathstr = exercise.videoURL
                let destination = segue.destinationViewController as! AVPlayerViewController
               // let url = NSURL(string:"http://www.bustthethrust.com/video/tonguetiptaps.mp4")
                guard let path = NSBundle.mainBundle().pathForResource(pathstr, ofType:"mp4") else {
                    print("no video found")
                    return
                }
                destination.player = AVPlayer(URL: NSURL(fileURLWithPath: path))
                destination.player!.play()
        }
    
    


}
