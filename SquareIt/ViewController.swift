//
//  ViewController.swift
//  SquareIt
//
//  Created by Chris Chadillon on 2019-01-12.
//  Copyright © 2019 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theScreenLabel: UILabel!
    private var theScreenValue = 0 {
        didSet {
            theScreenLabel.text = String(theScreenValue)
        }
    }
    
    @IBAction func doDigitTouched(_ sender: UIButton) {
        theScreenValue = theScreenValue * 10
            + Int((sender.titleLabel?.text)!)!
    }
    
    @IBAction func doClearTouched(_ sender: UIButton) {
        theScreenValue = 0
    }
    @IBAction func doSquareTouched(_ sender: Any) {
        theScreenValue *= theScreenValue
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

