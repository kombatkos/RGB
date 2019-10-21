//
//  ViewController.swift
//  RGB
//
//  Created by kot on 21/10/2019.
//  Copyright © 2019 Konstantin Porokhov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorBoard: UIView!
    @IBOutlet var redColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var blueView: UIView!

    @IBOutlet var redText: UITextView!
    @IBOutlet var greenText: UITextView!
    @IBOutlet var blueText: UITextView!
    
    @IBOutlet var redBegunok: UISlider!
    @IBOutlet var greenBegun: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redBegunok.minimumValue = 0
        redBegunok.maximumValue = 1
        greenBegun.minimumValue = 0
        greenBegun.maximumValue = 1
        redBegunok.value = 0
        greenBegun.value = 0
        redText.text = String(redBegunok.value)
        greenText.text = String(greenBegun.value)
    }

    
    @IBAction func redRun() {
        redText.text = String(redBegunok.value)
        redColorView.alpha = CGFloat(redBegunok.value)
    }
    
    @IBAction func GreenRunner() {
        greenText.text = String(greenBegun.value)
        greenColorView.alpha = CGFloat(greenBegun.value)
    }
}

