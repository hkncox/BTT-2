//
//  learnmore.swift
//  BTT-2
//
//  Created by FALEH ALDOSARI on 2/10/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit
class learnmore: UIViewController
{
    @IBOutlet var ScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize.height = 1000
    }
}

