//
//  Videocell.swift
//  learn
//
//  Created by KWESI KYEI on 6/25/18.
//  Copyright © 2018 KWESI KYEI. All rights reserved.
//

import UIKit

class Videocell: UITableViewCell {

    @IBOutlet weak var videoimageview: UIImageView!
    @IBOutlet weak var videotitlelabel: UILabel!
    
    func setVideo(video: video) {
        videoimageview.image = video.imaage
        videotitlelabel.text = video.title
    }
    
}
