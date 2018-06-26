//
//  videoListScreen.swift
//  learn
//
//  Created by KWESI KYEI on 6/24/18.
//  Copyright © 2018 KWESI KYEI. All rights reserved.
//

import UIKit

class videoListScreen: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var videos: [video] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func createArray() -> [video] {
        var tempvideos: [video] = []
        
        let video1 = video (image:#imageLiteral(resourceName: "animation"),title:"animal1")
        let video2 = video (image:#imageLiteral(resourceName: "pod"),title:"ipods")
        let video3 = video (image:#imageLiteral(resourceName: "sort"),title:"find")
        let video4 = video (image:#imageLiteral(resourceName: "swift"),title:"fast")
        let video5 = video (image:#imageLiteral(resourceName: "tutorial"),title:"learn")
        let video6 = video (image:#imageLiteral(resourceName: "YT"),title:"youtube")
        
        tempvideos.append(video1)
        tempvideos.append(video2)
        tempvideos.append(video3)
        tempvideos.append(video4)
        tempvideos.append(video5)
        tempvideos.append(video6)
      
        return tempvideos
    }
}
extension videoListScreen:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
     let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! Videocell
        
        cell.setVideo(video: video)
        return cell
    }
    
}




