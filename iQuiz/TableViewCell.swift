//
//  TableViewCell.swift
//  iQuiz
//
//  Created by Susan Wolfgram on 11/3/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var arrow: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
