//
//  PlaySound.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file")
        }
    }
}
