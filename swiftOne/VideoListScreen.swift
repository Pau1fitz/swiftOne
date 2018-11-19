//
//  VideoListScreen.swift
//  UFC
//
//  Created by Paul Fitzgerald on 11/19/18.
//  Copyright © 2018 Paul Fitzgerald. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "roy1"), title: "FA Cup")
        let video2 = Video(image: #imageLiteral(resourceName: "roy2"), title: "Champions League")
        let video3 = Video(image: #imageLiteral(resourceName: "roy3"), title: "Premier League")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        return cell
    }
}
