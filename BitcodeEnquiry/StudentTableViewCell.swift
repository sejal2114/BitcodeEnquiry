//
//  StudentTableViewCell.swift
//  BitcodeEnquiry
//
//  Created by Sejal on 02/02/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var lastNameLable: UILabel!
    @IBOutlet weak var firstNameLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    @IBOutlet weak var phoneNumberLable: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
