//
//  ViewController.swift
//  Clouds
//
//  Created by Thyago on 14/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class ViewController: UIBaseViewController {

    @IBOutlet weak var lbMain: UILabel!
    @IBOutlet weak var lbText: UILabel!
    @IBOutlet weak var btnCadastro: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnLater: UIButton!
    @IBOutlet weak var imgWeather: UIImageView!
    
    override func viewDidLoad() {
        self.setupUI()
        self.setupTexts()
        
        self.btnLater.addTarget(self, action: #selector(next(_:)), for: .touchDown)
        
    }
    
}

//MARK: Functions

extension ViewController {
    
    @objc func next(_ sender: UIButton) {
        self.performSegue(withIdentifier: Constants.Segues.FIRST_LOCATION, sender: nil)
    }
    
    func weatherImg() {
        
       
    }
}

extension ViewController : SetupUI {
    
    func setupTexts() {
        
    }
    
    func setupUI() {
        Theme.default.backgroundGray(self)
        Theme.default.textMain(self.lbMain)
        Theme.default.textCalling(self.lbText)
        Theme.default.btnPurple(self.btnCadastro)
        Theme.default.btnFacebook(self.btnFacebook)
        
    }
}
