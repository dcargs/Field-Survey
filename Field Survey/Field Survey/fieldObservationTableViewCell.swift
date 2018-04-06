//
//  fieldObservationTableViewCell.swift
//  Field Survey
//
//  Created by Devin Cargill on 4/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import UIKit

class fieldObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var fieldObservationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
