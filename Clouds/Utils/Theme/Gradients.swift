//
//  Gradients.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground(firstColor: UIColor, secondColor: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
