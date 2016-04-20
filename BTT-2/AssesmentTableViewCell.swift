//
//  AssesmentTableViewCell.swift.swift
//  BTT-2
//
//  Created by Chad Rasmussen on 4/18/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//


import UIKit

class AssessmentTableViewCell: UITableViewCell {
    
    //MARK properties
    @IBOutlet weak var btn_check: UIButton!
    @IBOutlet weak var lbl_CheckboxText: UILabel!
    //  @IBOutlet weak var btn_exercise5: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
