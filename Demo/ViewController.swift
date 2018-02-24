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
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text: NSAttributedString =
            "Hello".attributedString
                .font(with: UIFont.boldSystemFont(ofSize: 32))
                .colored(.red)
                +
            " World".attributedString
                .font(with: UIFont.systemFont(ofSize: 18))
                .colored(.purple)
        
        label.attributedText = text.align(.center)
        
        let bottomText: NSAttributedString =
            "SimpleString".attributedString // Convert string to attributed string
                .font(with: UIFont.systemFont(ofSize: 24)) // UIFont
                .colored(.orange) // UIColor
        
        let bottomText2: NSAttributedString =
            " - Simply style strings".attributedString
                .font(with: UIFont.systemFont(ofSize: 24))
                .colored(.green)
        
        bottomLabel.attributedText =
            (bottomText + bottomText2)
                .align(.center) // NSTextAlignment
                .lineBreakMode(.byWordWrapping) // NSLineBreakMode
    }
}

