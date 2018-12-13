//
//  RediboxButton.swift
//  RediBox final project
//
//  Created by Ksen on 06.12.18.
//  Copyright © 2018 Ksen. All rights reserved.
//

import UIKit

class RediboxButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                alpha = 0.5
            } else {
                UIView.animate(withDuration: 0.15) {
                    self.alpha = 1
                }
            }
        }
    }
}

