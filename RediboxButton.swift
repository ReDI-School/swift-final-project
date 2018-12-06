//
//  RediboxButton.swift
//  RediBox final project
//
//  Created by Ksen on 06.12.18.
//  Copyright © 2018 Ksen. All rights reserved.
//

import UIKit

class BeatButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = ReDIColors.blue
        }
    }
}
