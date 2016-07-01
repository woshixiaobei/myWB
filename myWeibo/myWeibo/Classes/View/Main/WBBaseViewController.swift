//
//  WBBaseViewController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {

    //自定义导航条&导航条目
    lazy var navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.cz_screenWidth(), height: 64))
    lazy var navItem = UINavigationItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    //重写title方法
    override var title: String? {
        didSet {
        navItem.title = title
        }
    }
    
}

//MARK:设置界面
extension WBBaseViewController {
    func setupUI() {
        
        view.backgroundColor = UIColor.cz_random()
        view.addSubview(navigationBar)
        navigationBar.items = [navItem]
        
        //设置导航条的颜色
        navigationBar.barTintColor = UIColor.cz_color(withHex: 0xF6F6F6)
        
        //设置navBar的字体颜色
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.darkGray()]
    }


}
