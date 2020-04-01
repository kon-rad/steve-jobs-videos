//
//  VideoView.swift
//  Steve Jobs Videos
//
//  Created by Konrad Gnat on 3/31/20.
//  Copyright © 2020 Konrad Gnat. All rights reserved.
//

import UIKit


class VideoView: UIViewController {
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        if let safeVideo = video {
            print(safeVideo.ytId)
            print("inside video")
        }
        
    }
}
