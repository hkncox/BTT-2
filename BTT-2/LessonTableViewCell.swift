//
//  LessonTableViewCell.swift
//  BTT-2
//
//  Created by Nicole Talley on 2/14/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class LessonTableViewCell: UITableViewCell {

    //MARK properties
    @IBOutlet weak var label_weekNum: UILabel!
    @IBOutlet weak var btn_exercise1: UIButton!

    @IBOutlet weak var btn_exercise5: UIButton!
    @IBOutlet weak var btn_exercise4: UIButton!
  //  @IBOutlet weak var btn_exercise4: UIButton!
    @IBOutlet weak var btn_exercise2: UIButton!
    @IBOutlet weak var btn_exercise3: UIButton!
  //  @IBOutlet weak var label_complete: UILabel!
   
  //  @IBOutlet weak var btn_exercise5: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btn_exercise1.layer.cornerRadius = 5
        btn_exercise2.layer.cornerRadius = 5
        btn_exercise3.layer.cornerRadius = 5
        btn_exercise4.layer.cornerRadius = 5
        btn_exercise5.layer.cornerRadius = 5
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
