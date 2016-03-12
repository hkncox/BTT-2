//
//  Exercise.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
import AVKit
class Exercise{
    var numTimesCompleted: Int?
    var title: String
    var duration: String
    var frequency: String
    var instructions: String
    var tips: String
  //  var video: AVPlayerViewController
    var exerciseNumber: String
    var videoURL: String?
    
    init?(numTimesCompleted: Int, title: String, duration: String, frequency: String, instructions: String, tips: String, exerciseNumber: String, videoURL: String)
    {
        
        self.numTimesCompleted = numTimesCompleted
        self.title = title
        self.duration = duration
        self.frequency = frequency
        self.instructions = instructions
        self.tips = tips
        self.exerciseNumber = exerciseNumber
        self.videoURL = videoURL

    }
    init?(numTimesCompleted: Int, title: String, duration: String, frequency: String, instructions: String, tips: String, exerciseNumber: String)
    {
        
        self.numTimesCompleted = numTimesCompleted
        self.title = title
        self.duration = duration
        self.frequency = frequency
        self.instructions = instructions
        self.tips = tips
        self.exerciseNumber = exerciseNumber
              
    }

}
