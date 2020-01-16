//
//  UIBaseViewController.swift
//  Clouds
//
//  Created by Thyago on 15/01/20.
//  Copyright © 2020 tcasablancas. All rights reserved.
//

import UIKit

class UIBaseViewController: UIViewController {
    
    @IBAction func popPage(_ sender: Any? = nil) {
        self.view.endEditing(true)
        self.navigationController?.popViewController(animated: true)}
    
    @IBAction func dismissPage(_ sender: Any?) {
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)}
    
}
