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

    @IBOutlet weak var btn_exercise2: UIButton!
    @IBOutlet weak var btn_exercise3: UIButton!
    @IBOutlet weak var label_complete: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
