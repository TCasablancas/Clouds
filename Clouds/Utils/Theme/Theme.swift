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
        static let facebook = UIColor(hexString: Constants.Colors.Hex.fbColor)
        
        //Backgrounds
        
        static func backgroundDefault(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.primary
        }
        
        static func backgroundGray(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.gray
        }
        
        static func backgroundWhite(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.white
        }
        
        static func backgroundPurple(_ viewController: UIViewController) {
            viewController.view.backgroundColor = Theme.default.purple
        }
        
        static func backgroundGradient(_ viewController: UIViewController) {
            viewController.view.setGradientBackground(firstColor: Theme.default.purple, secondColor: Theme.default.primary)
        }
        
        //Texts
        
        static func textMain(_ label: UILabel) {
            
            label.textColor = Theme.default.purple
            label.font = UIFont(name: Font.rubikLight.rawValue, size:28)
            label.adjustsFontForContentSizeCategory = true
        }
        
        static func textGray(_ label: UILabel) {
            
            label.textColor = Theme.default.gray
            label.font = UIFont(name: Font.rubikLight.rawValue, size:28)
            label.adjustsFontForContentSizeCategory = true
        }
        
        static func textCalling(_ label: UILabel) {
            
            label.textColor = Theme.default.purple
            label.font = UIFont(name: Font.rubikMedium.rawValue, size:16)
            label.adjustsFontForContentSizeCategory = true
        }
        
        static func textLocation(_ label: UILabel) {
            
            label.textColor = Theme.default.white
            label.font = UIFont(name: Font.rubikLight.rawValue, size:13)
            label.adjustsFontForContentSizeCategory = true
        }
        
        static func textTemperature(_ label: UILabel) {
            
            label.textColor = Theme.default.white
            label.font = UIFont(name: Font.rubikLight.rawValue, size:64)
            label.adjustsFontForContentSizeCategory = true
        }
        
        //Buttons
        
        static func btnGreen(_ button: UIButton, radius: CGFloat = 30) {
            
            button.borderRadiusButton(radius: radius)
            button.tintColor = Theme.default.white
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            button.backgroundColor = Theme.default.primary
            button.titleLabel?.font = UIFont(name: Font.rubikMedium.rawValue, size:16)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
        
        static func btnGray(_ button: UIButton, radius: CGFloat = 30) {
            
            button.borderRadiusButton(radius: radius)
            button.tintColor = Theme.default.white
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            button.backgroundColor = Theme.default.gray
            button.titleLabel?.font = UIFont(name: Font.rubikMedium.rawValue, size:16)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
        
        static func btnPurple(_ button: UIButton, radius: CGFloat = 30) {
            
            button.borderRadiusButton(radius: radius)
            button.tintColor = Theme.default.white
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            button.backgroundColor = Theme.default.purple
            button.titleLabel?.font = UIFont(name: Font.rubikMedium.rawValue, size:16)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
            //button.shadowButton()
        }
        
        static func btnFacebook(_ button: UIButton, radius: CGFloat = 30) {
            
            button.borderRadiusButton(radius: radius)
            button.tintColor = Theme.default.white
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            button.backgroundColor = Theme.default.facebook
            button.titleLabel?.font = UIFont(name: Font.rubikMedium.rawValue, size:16)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
    }
}
