//
//  Theme.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class Theme {

    struct `default` {
        
        //Colors
        
        static let white    = UIColor.white
        static let black    = UIColor.black
        static let gray     = UIColor(hexString: Constants.Colors.Hex.gray)
        static let primary  = UIColor(hexString: Constants.Colors.Hex.primaryGreen)
        static let purple   = UIColor(hexString: Constants.Colors.Hex.primaryPurple)
        static let orange   = UIColor(hexString: Constants.Colors.Hex.primaryOrange)
        static let brown    = UIColor(hexString: Constants.Colors.Hex.primaryBrown)
        
        //Backgrounds
        
        static func backgroundDefault(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.gray
        }
        
        static func backgroundGray(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.gray
        }
        
        static func backgroundWhite(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.white
        }
        
        static func backgroundGradient(_ viewController: UIViewController) {
            viewController.view.setGradientBackground(firstColor: Theme.default.purple, secondColor: Theme.default.primary)
        }
    }
}
