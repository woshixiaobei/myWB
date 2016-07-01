//
//  WBMainTabBarController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildControllers()
    }

}

extension WBMainTabBarController {

    //添加多个子控制器
   private func setupChildControllers() {
        
        let array = [["clsName":"WBHomeViewController","title":"首页","imageName":"home"]]
        
        var arrayM = [UIViewController]()
        for dict in array {
            arrayM.append(setupController(dict: dict))
        }
    viewControllers = arrayM
    }

    //添加单个子控制器
    private func setupController(dict: [String: String]) -> UIViewController {
        
        guard let clsName = dict["clsName"],
             title = dict["title"],
             imageName = dict["imageName"],
        cls = NSClassFromString(Bundle.main().namespace + "." + clsName) as? UIViewController.Type else {
                return UIViewController()
        }
        
        //创建vc控制器
        let vc = cls.init()
        vc.title = title
        
        //设置图标颜色
        vc.tabBarItem.image = UIImage(named: "tabbar_" + imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_" + imageName + "_selected")?.withRenderingMode(.alwaysOriginal)
        
        let nav = WBMainNavViewController(rootViewController: vc)
        return nav
        
    }
}
