//
//  WBHomeViewController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

   
    //MARK:显示好友
    @objc private func showFriends() {
        let vc = WBDemoViewController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension WBHomeViewController {

    override func setupUI() {
        super.setupUI()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", style: .plain, target: self, action: #selector(showFriends))
    }

}
