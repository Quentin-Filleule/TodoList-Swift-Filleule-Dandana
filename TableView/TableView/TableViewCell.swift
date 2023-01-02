//
//  TableViewCell.swift
//  TableView
//
//  Created by Quentin Filleule on 28/10/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func Validation(_ sender: Any) {
    }
    

}
