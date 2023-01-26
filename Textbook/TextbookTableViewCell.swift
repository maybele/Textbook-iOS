//
//  TextbookTableViewCell.swift
//  Textbook
//
//  Created by FDCBele on 1/25/23.
//

import UIKit

class TextbookTableViewCell: UITableViewCell {

    @IBOutlet weak var texbookTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     //   accessoryType = .disclosureIndicator
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
