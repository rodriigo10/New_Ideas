//
//  ViewController.swift
//  MusicTest
//
//  Created by Rodrigo Garcia on 01/07/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "nadilson", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
            } catch {
                print("Erro")
            }
            player.prepareToPlay()
            player.play()
        }
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "chegouReggae", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do{
                player = try AVAudioPlayer(contentsOf: url)
            } catch{
                print("Erro")
            }
            player.prepareToPlay()
            player.play()
        }
    }
}

