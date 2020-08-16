//
//  ViewController.swift
//  xylophone
//
//  Created by Bryan Barreto on 15/08/20.
//  Copyright © 2020 Bryan Barreto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    
    func playSound(sound:String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player?.play()
   }
    
}

