//
//  LearnMoreTableViewCell.swift
//  BTT-2
//
//  Created by Nicole Talley on 4/3/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import UIKit

class LearnMoreTableViewCell: UITableViewCell {

    @IBOutlet weak var text_details: UITextView!
    
    @IBOutlet weak var label_title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        label_title.layer.cornerRadius = 5
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
