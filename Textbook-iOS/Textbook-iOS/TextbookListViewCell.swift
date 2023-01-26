//
//  TextbookListViewCell.swift
//  Textbook-iOS
//
//  Created by FDCBele on 1/26/23.
//

import UIKit

class TextbookListViewCell: UITableViewCell {
    
    @IBOutlet weak var textbookTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
