//
//  HomeTableViewCell.swift
//  ExpandableAndCollapsTableView
//
//  Created by Harinath Reddy G on 27/03/20.
//  Copyright © 2020 Harinath Reddy G. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var imgImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
