//
//  VideoCell.swift
//  TVC
//
//  Created by KWESI KYEI on 6/13/18.
//  Copyright © 2018 KWESI KYEI. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoimageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoimageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
