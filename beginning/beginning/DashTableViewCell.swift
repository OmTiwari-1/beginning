//
//  DashTableViewCell.swift
//  beginning
//
//  Created by Students on 16/04/24.
//

import UIKit

class DashTableViewCell: UITableViewCell {
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var nameconstant: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
