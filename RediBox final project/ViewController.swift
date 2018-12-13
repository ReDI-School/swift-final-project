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
    
    @IBOutlet weak var stackView: UIStackView!

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
    @IBAction func bassButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename: "FW_808_One_Shot_Dirty_Sub_C")
    }
    @IBAction func sfxButtonTapped(_ sender: UIButton)  { AudioPlayer.play(filename: "FW_Fx_One_Shot_Ghostly_01")
    }
    @IBAction func weAreRediButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename: "We_Are_Redi")
    }
    
    
    
    @IBAction func loopButtonTapped(_ sender: UIButton) {
        AudioPlayer.play(filename:"RC noise loop")
    }
    
    @IBAction func loopButtonTappedTwo(_ sender: UIButton) {
        AudioPlayer.play(filename:"RC bellystan loop")
    }
    @IBAction func loopButtonTappedThree(_ sender: RediboxButton) {
   //     AudioPlayer.play(filename:"___")
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let sliderValue = CGFloat(sender.value)
        backgroundColorView.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.2666666667, blue: 0.4, alpha: 1).withAlphaComponent(sliderValue)
        rediImageView.alpha = 1 - sliderValue
        stackView.alpha = sliderValue
    }
    
    
}

