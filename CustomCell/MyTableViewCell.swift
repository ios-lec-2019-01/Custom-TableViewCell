//
//  MyTableViewCell.swift
//  CustomCell
//
//  Created by 김종현 on 19/05/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var fruitsLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
