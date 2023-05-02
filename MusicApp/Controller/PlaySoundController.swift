//
//  ViewController.swift
//  MusicApp
//
//  Created by Nicolae Chivriga on 27/04/2023.
//


import UIKit
import AVFoundation



var player: AVAudioPlayer!

class PlaySoundController: UIViewController {
    // Method for playing music
    func play(soundName:String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    // Actions after user pressed UI
    @IBAction func isPressed(_ sender: UIButton) {
        // Making to dissapear UI
        sender.layer.opacity = 0
        play(soundName: sender.currentTitle!)
        sender.frame = CGRect(x: 300, y: 1000, width: 100, height: 240)
        // After animation UI appears with the sound
        DispatchQueue.main.asyncAfter(deadline: .now() ) {
            UIView.animate(withDuration: 2.4, delay: 0) {
                switch sender.currentTitle{
                case "C":
                    sender.backgroundColor = .yellow
                case "D":
                    sender.backgroundColor = .systemPink
                case "E":
                    sender.backgroundColor = .green
                case "F":
                    sender.backgroundColor = .gray
                case "G":
                    sender.backgroundColor = .brown
                case "A":
                    sender.backgroundColor = .red
                case "B":
                    sender.backgroundColor = .black
                default: sender.backgroundColor = .blue
                }
                sender.layer.opacity =  1
                sender.frame = CGRect(x: 60, y: 100, width: 100, height: 240)
            }
        }
    }
}




