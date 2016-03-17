//
//  Homepage.swift
//  BTT-2
//
//  Created by Nicole Talley on 3/13/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController{
    @IBOutlet weak var btn_logIn: UIButton!
    @IBOutlet weak var btn_signUp: UIButton!
    @IBOutlet weak var btn_learnMore: UIButton!
    @IBOutlet weak var btn_assessment: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        btn_logIn.layer.cornerRadius = 10
        btn_assessment.layer.cornerRadius = 10
        btn_learnMore.layer.cornerRadius = 10
        btn_signUp.layer.cornerRadius = 10
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
