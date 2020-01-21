//
//  WeatherCell.swift
//  Clouds
//
//  Created by Thyago on 20/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var lbDay: UILabel!
    @IBOutlet weak var lbTemperature: UILabel!
    @IBOutlet weak var icWeather: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
