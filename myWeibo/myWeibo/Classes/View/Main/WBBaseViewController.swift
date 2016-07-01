//
//  WBBaseViewController.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    
}

//MARK:设置界面
extension WBBaseViewController {
    func setupUI() {
        
        view.backgroundColor = UIColor.cz_random()
    }


}
