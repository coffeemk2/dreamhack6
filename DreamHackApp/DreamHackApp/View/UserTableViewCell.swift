//
//  UserTableViewCell.swift
//  DreamHackApp
//
//  Created by maekawakazuma on 9/9/16.
//  Copyright © 2016 maekawakazuma. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var user_id: UILabel!
    @IBOutlet weak var profile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
