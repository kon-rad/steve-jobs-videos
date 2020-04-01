//
//  VideosListViewController.swift
//  Steve Jobs Videos
//
//  Created by Konrad Gnat on 3/28/20.
//  Copyright © 2020 Konrad Gnat. All rights reserved.
//

import Foundation
import UIKit

class VideosListViewController: UITableViewController {
    
    let videos: [Video] = [
        Video(ytId: "UF8uR6Z6KLc", title: "2005 Stanford Commencement Address"),
        Video(ytId: "YXUhLbV8Nrg", title: "MIT Class: What he learnt after he was fired from Apple?"),
        Video(ytId: "wvhW8cp15tk", title: "With Bill Gates at D5 Conference 2007"),
        Video(ytId: "vN4U5FqrOdQ", title: "iPhone 2007 Presentation"),
        Video(ytId: "Udi0rk3jZYM", title: "Brainstorms with the NeXT team 1985"),
        Video(ytId: "a0AZLPqjpkg", title: "At the D8 Conference 2010"),
    ]
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var onVideoCellPress: UITableViewCell!
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)

        cell.textLabel?.text = "\(video.title)"

        return cell
    }
        //MARK: - TableView Delegate Methods
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            video = videos[indexPath.row]
//            performSegue(withIdentifier: "ListToVideoView", sender: video)
        }

        // This function is called before the segue
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            // get a reference to the second view controller
            let secondViewController = segue.destination as! VideoView
//            print(video!.title)
            
//            let safeVideo = video {
//
//                print(safeVideo!.title)
//                // set a variable in the second view controller with the data to pass
//                secondViewController.video = safeVideo
//            }
        }
}
