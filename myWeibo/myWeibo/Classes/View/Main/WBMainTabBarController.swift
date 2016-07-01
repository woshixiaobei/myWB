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
        setupComposeButton()
    }

    //撰写按钮的监听方法
   @objc private func composeStatus() {
    
        print("撰写微博")
    
    }
    //MARK:添加撰写按钮
    private lazy var composeButton: UIButton = UIButton.cz_imageButton("tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")
    
}


//MARK:添加子控制器
extension WBMainTabBarController {

   //撰写按钮
    private func setupComposeButton() {
    
        tabBar.addSubview(composeButton)
        let count = CGFloat(childViewControllers.count)
        let w = tabBar.bounds.width / count - 1

        composeButton.frame = tabBar.bounds.insetBy(dx: 2 * w, dy: 0)
        print("撰写按钮的宽度\(composeButton.bounds.width)")
//         按钮监听方法
        composeButton.addTarget(self, action: #selector(composeStatus), for: .touchUpInside)
    }


    
    //添加多个子控制器
   private func setupChildControllers() {
        
        let array = [["clsName":"WBHomeViewController","title":"首页","imageName":"home"],
                     ["clsName":"WBMessageViewController","title":"消息","imageName":"message_center"],
                     ["clsName":"UIViewController"],
                     ["clsName":"WBDiscoverViewController","title":"发现","imageName":"discover"],
                 ["clsName":"WBProflieViewController","title":"我","imageName":"profile"],
                 
                     
                     ]
        
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
        
        //设置tabbar 的字体颜色
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange()], for: .highlighted)
        vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 12)], for: UIControlState(rawValue: 0))
        
        let nav = WBMainNavViewController(rootViewController: vc)
        return nav
        
    }
}
