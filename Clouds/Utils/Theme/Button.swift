//
//  Button.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func borderRadiusButton(radius: CGFloat) {
        
        if radius != 0 {
            self.layer.cornerRadius = radius
        }
    }
    
    func shadowButton() {
        
        self.layer.shadowColor = Theme.default.black.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 25
        self.layer.shadowOffset = CGSize(width: 0, height: 10)
    }
}
