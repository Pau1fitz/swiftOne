//
//  VideoCell.swift
//  UFC
//
//  Created by Paul Fitzgerald on 11/19/18.
//  Copyright © 2018 Paul Fitzgerald. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}
