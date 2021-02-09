//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBOutlet weak var BtnC: UIButton!
    @IBOutlet weak var BtnD: UIButton!
    @IBOutlet weak var BtnE: UIButton!
    @IBOutlet weak var BtnF: UIButton!
    @IBOutlet weak var BtnG: UIButton!
    @IBOutlet weak var BtnA: UIButton!
    @IBOutlet weak var BtnB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func BtnCPressed(_ sender: UIButton) {
        playSound(tone: sender.currentTitle,btn: sender)
    }
    
    func playSound(tone: String?, btn: UIButton) {
        
        btn.alpha = 0.5
        
        let url = Bundle.main.url(forResource: tone, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        usleep(200000)
        btn.alpha = 1

    }

}




