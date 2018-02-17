//
//  ViewController.swift
//  Demo
//
//  Created by James Pang on 17/2/18.
//  Copyright © 2018 James Pang. All rights reserved.
//

import UIKit
import SimpleString

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.attributedText =
            "Hello".attributedString
            .font(with: UIFont.boldSystemFont(ofSize: 32))
            .colored(.red) +
            " World".attributedString
            .font(with: UIFont.systemFont(ofSize: 18))
            .colored(.purple)
    }
}

