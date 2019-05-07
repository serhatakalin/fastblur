//
//  ViewController.swift
//  FastBlur
//
//  Created by Serhat Akalin on 7.05.2019.
//  Copyright © 2019 Serhat Akalin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func blurAction(_ sender: UIButton) {
        blurImageView.appendBlur()
    }
    
    @IBAction func blurRemoveAction(_ sender: Any) {
        blurImageView.removeBlur()
    }
}

