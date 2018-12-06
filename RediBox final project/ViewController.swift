//
//  ViewController.swift
//  RediBox final project
//
//  Created by Ksen on 04.12.18.
//  Copyright © 2018 Ksen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    
}

