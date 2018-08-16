//
//  KneeListTableViewCell.swift
//  ProstheticsApp
//
//  Created by Nathaniel Choung on 8/15/18.
//  Copyright © 2018 ST&G. All rights reserved.
//

import UIKit

class KneeListTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
