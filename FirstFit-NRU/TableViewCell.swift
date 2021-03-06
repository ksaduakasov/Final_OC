//
//  TableViewCell.swift
//  FirstFit-NRU
//
//  Created by Kalbek Saduakassov on 05.03.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var processNOlabel: UILabel!
    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var blockLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
