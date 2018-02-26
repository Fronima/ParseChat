//
//  MessageCell.swift
//  ParseChat
//
//  Created by ARG Lab on 2/24/18.
//  Copyright © 2018 Odin. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var bubleView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bubleView.layer.cornerRadius = 16
        bubleView.clipsToBounds = true
        bubleView.backgroundColor = UIColor(red:0.16, green:0.50, blue:0.73, alpha:1.0)
        message.textColor = UIColor.white
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        bubleView.backgroundColor = UIColor.blue
        // Configure the view for the selected state
    }

}
