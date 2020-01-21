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
        
    }
    
}

//MARK: Functions
//MARK: Navigation
extension ViewController {
    
    @IBAction func next(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: Constants.Segues.MAIN, sender: nil)
    }
    
    
}

extension ViewController : SetupUI {
    
    func setupTexts() {
        self.lbMain.text = "Olá, seja bem vindo ao Clouds: o seu assistente climático."
        self.lbText.text = "Para uma melhor experiência, gostaria de se logar, ou criar um cadastro?"
        
    }
    
    func setupUI() {
        Theme.default.backgroundGray(self)
        Theme.default.textMain(self.lbMain)
        Theme.default.textCalling(self.lbText)
        Theme.default.btnPurple(self.btnCadastro)
        Theme.default.btnFacebook(self.btnFacebook)
        
    }
}
