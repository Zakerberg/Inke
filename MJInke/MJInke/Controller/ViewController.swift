//
//  ViewController.swift
//  MJInke
//
//  Created by Michael 柏 on 2017/7/30.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var live: MJCell!
    
    @IBOutlet weak var backgroungView: UIImageView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var giftBtn: UIButton!
    @IBOutlet weak var loveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        bringBtnToFront()
        
    }
    
    func setBackground() {
        let imageUrl = URL(string:"http://img2.inke.cn/" + live.protrait)
        backgroungView.kf.setImage(with: imageUrl)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let effectView = UIVisualEffectView(effect: blurEffect)
        effectView.frame = backgroungView.bounds
        backgroungView.addSubview(effectView)
    }
    
    func bringBtnToFront() {
        view.bringSubview(toFront: backBtn)
        view.bringSubview(toFront: giftBtn)
        view.bringSubview(toFront: loveBtn)
    }
    
    @IBAction func backBtnClick(_ sender: UIButton) {
    navigationController?.popViewController(animated: true)
    navigationController?.setNavigationBarHidden(false, animated: true)
    
    }
    
    @IBAction func giftBtnClick(_ sender: UIButton) {
    }
    
    @IBAction func loveBtnClick(_ sender: UIButton) {
    }
}

