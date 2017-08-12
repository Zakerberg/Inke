//
//  MJLivesController.swift
//  MJInke
//
//  Created by Michael 柏 on 2017/8/1.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit
import Just
import Kingfisher

class MJLivesController: UITableViewController {
    
    let liveListUrl = "http://service.ingkee.com/api/live/gettop?imsi=&uid=17800399&proto=5&idfa=A1205EB8-0C9A-4131-A2A2-27B9A1E06622&lc=0000000000000026&cc=TG0001&imei=&sid=20i0a3GAvc8ykfClKMAen8WNeIBKrUwgdG9whVJ0ljXi1Af8hQci3&cv=IK3.1.00_Iphone&devi=bcb94097c7a3f3314be284c8a5be2aaeae66d6ab&conn=Wifi&ua=iPhone&idfv=DEBAD23B-7C6A-4251-B8AF-A95910B778B7&osversion=ios_9.300000&count=5&multiaddr=1"
    
    var list : [MJCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Swift 映客直播"
        loadList()
        
        self.refreshControl = UIRefreshControl()
        self.refreshControl?.addTarget(self, action: #selector(loadList), for: .valueChanged)
        
    }
    
    @objc func loadList()  {
        
        Just.post(liveListUrl) { (r) in
            guard let json = r.json as? NSDictionary else {
                return
            }
            let lives = RootClass(fromDictionary: json).lives!
            
            self.list = lives.map({ (live) -> MJCell in
                return MJCell(protrait: live.creator.portrait, nick: live.creator.nick, location: live.city, views: live.onlineUsers, url: live.streamAddr)
            })
            
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
                self.refreshControl?.endRefreshing()
            }
        }
    }
    
    // MARK: - TableView
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600.0
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MJLiveCell
        
        let live = list[indexPath.row]
        
        cell.nameLabel.text = live.nick
        cell.adressLabel.text = live.location
        cell.ViewersLabel.text = "\(live.views)"
        
        let imageUrl = URL(string:"http://img2.inke.cn/" + live.protrait)
        
        //头像
        cell.imgPor.kf.setImage(with: imageUrl)
        
        //详情图片
        cell.bigIamgeView.kf.setImage(with: imageUrl)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        let dest = segue.destination as! ViewController
        dest.live = list[(tableView.indexPathForSelectedRow?.row)!]
        
    }
}
