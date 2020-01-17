//
//  HomeViewController.swift
//  Clouds
//
//  Created by Thyago on 17/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class HomeViewController: UIBaseViewController {
    
    override func viewDidLoad() {
        self.setupUI()
        self.setupTexts()
    }
}

extension HomeViewController: SetupUI {
    
    func setupUI() {
        Theme.default.backgroundDefault(self)
    }
    
    func setupTexts() {
        
    }
}
