//
//  VideoView.swift
//  Steve Jobs Videos
//
//  Created by Konrad Gnat on 3/31/20.
//  Copyright © 2020 Konrad Gnat. All rights reserved.
//

import UIKit
import YoutubeKit


class VideoView: UIViewController, YTSwiftyPlayerDelegate {
    
    var video: Video?
    
    private var player: YTSwiftyPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        if let safeVideo = video {
            print(safeVideo.ytId)
            print("inside video")
            self.title = safeVideo.title
            
            // Create a new player
            player = YTSwiftyPlayer(
                        frame: CGRect(x: 0, y: 0, width: 640, height: 480),
                        playerVars: [.videoID(safeVideo.ytId)])

            if player == nil {
                return
            }
            // Enable auto playback when video is loaded
            player?.autoplay = true
            
            // Set player view.
            view = player

            // Set delegate for detect callback information from the player.
            player!.delegate = self
            
            // Load the video.
            player!.loadPlayer()
        }
        
    }
}
