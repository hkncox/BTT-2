//
//  VideoViewController.swift
//  BTT-2
//
//  Created by Nicole Talley on 3/12/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//
/*
import UIKit
import AVFoundation
import AVKit

class VideoViewController: AVPlayerViewController {
    var exercise: Exercise!
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
       // let videoString: String = "\(exercise.videoURL)"
        let videoURL = NSURL(string: "http://www.bustthethrust.com/video/tonguetiptaps.mp4")
        let player = AVPlayer(URL: videoURL!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    private var firstAppear = true
       override func viewDidLoad(){
        super.viewDidLoad()
        if firstAppear {
            do {
                try playVideo()
                firstAppear = false
            } catch AppError.InvalidResource(let name, let type) {
                debugPrint("Could not find resource \(name).\(type)")
            } catch {
                debugPrint("Generic error")
            }
            
        }
    }
    
    private func playVideo() throws {
        guard let path = NSBundle.mainBundle().pathForResource("video/tonguetiptaps", ofType:"mp4") else {
            throw AppError.InvalidResource("tonguetiptaps", "mp4")
        }
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.presentViewController(playerController, animated: true) {
            player.play()
        }
    }
}

enum AppError : ErrorType {
    case InvalidResource(String, String)
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
*/

