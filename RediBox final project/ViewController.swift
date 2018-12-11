//
//  ViewController.swift
//  RediBox final project
//
//  Created by Ksen on 04.12.18.
//  Copyright © 2018 Ksen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundColorView: UIView!
    
    @IBOutlet weak var rediImageView: UIImageView!
    @IBOutlet weak var backgroundColorSLider: UISlider!
    
    var buttons:[UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for subview in view.subviews {
            if let button = subview as? UIButton {
                buttons.append(button)
            }
        }
        
    }

    @IBAction func kickButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename: "Kick SwaggedOut 7")
    }
    @IBAction func kickButtonTappedTwo(_ sender: UIButton) {
        AudioPlayer.play(filename: "SnareRim Stadium V13")
    }
    
    @IBAction func hihatButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename: "HiHat Pedal Close_08")
    }
    
    @IBAction func hihatButtonTappedTwo(_ sender: UIButton) {
        AudioPlayer.play(filename: "HiHat_10_V26_1")
    }
    
    @IBAction func snareButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename: "Snare Dragon 2 V3")
    }
    
    @IBAction func snareButtonTappedTwo(_ sender: UIButton) {
        AudioPlayer.play(filename: "SC Snare11")
    }
    
    @IBAction func atmoButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func atmoButtonTappedTwo(_ sender: UIButton) {
    }
    
    @IBAction func atmoButtonTappedThree(_ sender: UIButton) {
    }
    
    
    
    @IBAction func loopButtonTapped(_ sender: UIButton) {
//        AudioPlayer.play(filename:"Loop 01")
    }
    
    @IBAction func loopButtonTappedTwo(_ sender: UIButton) {
//        AudioPlayer.play(filename:"Loop 02")
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let sliderValue = CGFloat(sender.value)
        backgroundColorView.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.2666666667, blue: 0.4, alpha: 1).withAlphaComponent(sliderValue)
        rediImageView.alpha = 1 - sliderValue
        for button in buttons {
            button.alpha = sliderValue
        }
    }
    
    
}

