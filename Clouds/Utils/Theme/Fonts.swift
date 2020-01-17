//
//  Fonts.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

enum SizeFont {
    
    case size10
    case size12
    case size14
    case size16
    case size18
    case size20
    case size22
    case size24
    
    var size: CGFloat {
        
        switch self {
        case .size10:
            return CGFloat(10)
        case .size12:
            return CGFloat(12)
        case .size14:
            return CGFloat(14)
        case .size16:
            return CGFloat(16)
        case .size18:
            return CGFloat(18)
        case .size20:
            return CGFloat(20)
        case .size22:
            return CGFloat(22)
        case .size24:
            return CGFloat(24)
        }
    }
}

public enum Font: String{
    
    case rubikBold          = "Rubik-Bold"
    case rubikItalic        = "Rubik-Italic"
    case rubikLight         = "Rubik-Light"
    case rubikLightItalic   = "Rubik-LightItalic"
    case rubikMedium        = "Rubik-Medium"
    case rubikMediumItalic  = "Rubik-MediumItalic"
    
    private func scaledFont(font: UIFont) -> UIFont {
        
        if #available(iOS 11.0, *) {
            return UIFontMetrics.default.scaledFont(for: font)
        } else {
            return font
        }
    }
    
    public func font(_ size: CGFloat = 15.0) -> UIFont
    {
        let value = size * UIScreen.main.bounds.percentFontSize()
        
        switch self {
            
        case .rubikBold:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .bold))
        case .rubikMedium:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .medium))
        case .rubikLight:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .light))
        case .rubikItalic:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .regular))
        case .rubikLightItalic:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .light))
        case .rubikMediumItalic:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .medium))
        }
    }
}

extension CGRect {
    
    func percentFontSize() -> CGFloat {
        
        switch self.height {
        case 480.0: //Iphone 3,4,SE => 3.5 inch
            return CGFloat(0.7)
        case 568.0: //iphone 5, 5s => 4 inch
            return CGFloat(0.8)
        case 667.0: //iphone 6, 6s => 4.7 inch
            return CGFloat(0.9)
        case 736.0: //iphone 6s+ 6+ => 5.5 inch
            return CGFloat(1.0)
        default:
            return CGFloat(1.0)
        }
        
    }
}

