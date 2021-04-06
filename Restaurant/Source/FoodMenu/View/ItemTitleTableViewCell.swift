//
//  ItemTitleTableViewCell.swift
//  Restaurant
//
//  Created by imran shaik on 05/04/21.
//

import UIKit

class ItemTitleTableViewCell: UITableViewCell {
//    MARK:- Outlets
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var foodItemNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
