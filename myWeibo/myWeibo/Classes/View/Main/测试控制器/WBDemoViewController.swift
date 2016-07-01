//
//  WBDemoViewController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBDemoViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      title = "第\(navigationController?.childViewControllers.count ?? 0)个"
    }
    //MARK:显示下一个
   @objc private func showNext() {
    
        let vc = WBDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension WBDemoViewController {
    override func setupUI() {
        super.setupUI()
        view.backgroundColor = UIColor.white()
       
        navItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", target: self, action: #selector(showNext))
    }

}
