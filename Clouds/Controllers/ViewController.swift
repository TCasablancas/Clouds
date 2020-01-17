//
//  ViewController.swift
//  Clouds
//
//  Created by Thyago on 14/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class ViewController: UIBaseViewController {

    override func viewDidLoad() {
        self.setupUI()
        self.setupTexts()
    }


}

extension ViewController : SetupUI {
    
    func setupTexts() {
        
    }
    
    func setupUI() {
        Theme.default.backgroundDefault(self)
    }
}
