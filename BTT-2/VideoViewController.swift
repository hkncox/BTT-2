//
//  VideoViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 3/12/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: AVPlayerViewController {
    var exercise: Exercise!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let videoString: String = "\(exercise.videoURL)"
        let videoURL = NSURL(string: videoString)
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
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
