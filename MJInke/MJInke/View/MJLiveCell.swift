//
//  MJLiveCell.swift
//  MJInke
//
//  Created by Michael 柏 on 2017/8/11.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class MJLiveCell: UITableViewCell {

    @IBOutlet weak var imgPor: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var ViewersLabel: UILabel!
    @IBOutlet weak var bigIamgeView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
