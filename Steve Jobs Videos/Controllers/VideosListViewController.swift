//
//  VideosListViewController.swift
//  Steve Jobs Videos
//
//  Created by Konrad Gnat on 3/28/20.
//  Copyright © 2020 Konrad Gnat. All rights reserved.
//

import Foundation
import UIKit

class VideosListViewController: UIViewController {
    
    let videos: [Video] = [
        Video(ytId: "UF8uR6Z6KLc", title: "2005 Stanford Commencement Address"),
        Video(ytId: "YXUhLbV8Nrg", title: "MIT Class: What he learnt after he was fired from Apple?"),
        Video(ytId: "wvhW8cp15tk", title: "With Bill Gates at D5 Conference 2007"),
        Video(ytId: "vN4U5FqrOdQ", title: "iPhone 2007 Presentation"),
        Video(ytId: "Udi0rk3jZYM", title: "Brainstorms with the NeXT team 1985"),
        Video(ytId: "a0AZLPqjpkg", title: "At the D8 Conference 2010"),
    ]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    @IBOutlet weak var onVideoCellPress: UITableViewCell!
    
    
}

extension VideosListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)

        cell.textLabel?.text = "\(video.title)"

        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! MessageCell
//        cell.label.text = video.title
        
//        cell.leftImageView.isHidden = true
//        cell.rightImageView.isHidden = false
//        cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
//        cell.label.textColor = UIColor(named: K.BrandColors.purple)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as UITableViewCell
        var (testName) = tasks[indexPath.row]
        cell.textLabel?.text=testName
        return cell
    }
    
}
