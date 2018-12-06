//
//  AudioPlayer.swift
//  FinalProject
//
//  Created by mad-05 on 04.12.18.
//  Copyright © 2018 ReDI School. All rights reserved.
//

import AVFoundation

struct AudioPlayer {
    
    static func play(filename: String, withExtension fileExtension: String = "wav") {
        
        guard let soundSampleURL = Bundle.main.url(forResource: filename, withExtension: fileExtension)
            else { return }
        
        // Create sound - maximum duration to use with a system sound is 30 seconds
        var soundID: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundSampleURL as CFURL, &soundID)
        
        // Play it
        AudioServicesPlaySystemSoundWithCompletion(soundID) {
            AudioServicesDisposeSystemSoundID(soundID)
        }
    }
}
