//
//  MJLivesController.swift
//  MJInke
//
//  Created by Michael 柏 on 2017/8/1.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

import Kingfisher

class MJLivesController: UITableViewController {

    let liveListUrl = "http://service.ingkee.com/api/live/gettop?imsi=&uid=17800399&proto=5&idfa=A1205EB8-0C9A-4131-A2A2-27B9A1E06622&lc=0000000000000026&cc=TG0001&imei=&sid=20i0a3GAvc8ykfClKMAen8WNeIBKrUwgdG9whVJ0ljXi1Af8hQci3&cv=IK3.1.00_Iphone&devi=bcb94097c7a3f3314be284c8a5be2aaeae66d6ab&conn=Wifi&ua=iPhone&idfv=DEBAD23B-7C6A-4251-B8AF-A95910B778B7&osversion=ios_9.300000&count=5&multiaddr=1"
    
    var list : [MJCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Swift 映客直播"
        

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - Table view data source
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
        
        let imageUrl = URL(string:"http://img.meelive.cn/" + live.protrait)
        
//头像
        
        //cell.imgPor.kf
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
