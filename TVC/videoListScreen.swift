//
//  videoListScreen.swift
//  TVC
//
//  Created by KWESI KYEI on 6/13/18.
//  Copyright © 2018 KWESI KYEI. All rights reserved.
//

import UIKit

class videoListScreen: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    var videos: [Video] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        tableview.delegate = self
        tableview.dataSource = self 
    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        let video1 = Video(image: #imageLiteral(resourceName: "animation"), title: "Animation")
        let video2 = Video(image: #imageLiteral(resourceName: "facebook"), title: " facebook")
        let video3 = Video(image: #imageLiteral(resourceName: "podcast"), title: "Podcast")
        let video4 = Video(image: #imageLiteral(resourceName: "sort"), title: "Sort")
        let video5 = Video(image: #imageLiteral(resourceName: "swift"), title: "Swift")
        let video6 = Video(image: #imageLiteral(resourceName: "tutorial"), title: "Tutorial")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
        
    }
}

extension.VideoListScreen: UITableViewDataSource, UITableViewDelegate do {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
   }
    func tableView(_ tableView: UITableView, cellforRowAt indexPath: IndexPath) -> UITableViewCell -> Int {
        let video  = vidoes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Videocell") as! VideoCell
        cell.setVideo(video: <#T##Video#>)
        return cell 
   }
}
