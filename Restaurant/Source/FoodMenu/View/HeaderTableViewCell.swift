//
//  HeaderTableViewCell.swift
//  Restaurant
//
//  Created by imran shaik on 06/04/21.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
//    MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonExpandable: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
