//
//  ViewController.swift
//  GuitarraAppMarco
//
//  Created by marco rodriguez on 16/05/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cuerdaButton(_ sender: UIButton) {
        playSound(tecla: sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Regresa despues de 0.2 seg a su color normal
            sender.alpha = 1.0
        }
    }
    
    func playSound(tecla: String) {
        guard let url = Bundle.main.url(forResource: tecla, withExtension: "mp3") else { return }
            player = try! AVAudioPlayer(contentsOf: url)
            player.play()
        
    }
    
    

}

