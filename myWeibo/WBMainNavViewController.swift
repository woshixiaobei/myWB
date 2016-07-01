//
//  WBMainNavViewController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBMainNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension WBMainNavViewController {
    
    //重写push方法,所有的push方法都会调用此方法
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
    


}
