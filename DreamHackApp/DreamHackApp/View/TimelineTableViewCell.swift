//
//  TimelineTableViewCell.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/9/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var yourImage: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var timeline: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
