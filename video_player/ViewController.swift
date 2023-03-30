//
//  ViewController.swift
//  video_player
//
//  Created by Sophie Greene on 29/03/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        playVideo()
    }
    private func playVideo(){
        //access the videos location
        guard let path=Bundle.main.path(forResource: "DJ Got Us Fallin' in Love - Lovestruck The Musical-gtrI7o2otXQ", ofType:"mp4")else{
            debugPrint("video not found")
            return
            }
        // create a player with the location of the video
        let player = AVPlayer(url:URL(fileURLWithPath:path))
        // define the player view
        let playerController = AVPlayerViewController()
        // point the player view controller to the previously defined player
        playerController.player = player
        // link to the view controller
        present(playerController,animated: true){
            //start palying the video automatically
            player.play()
        }
    }
   
        

}

