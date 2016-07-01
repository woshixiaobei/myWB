//
//  UIBarButtonItem+Extensions.swift
//  传智微博
//
//  Created by 小贝 on 16/6/30.
//  Copyright © 2016年 小贝. All rights reserved.
//

import Foundation

extension UIBarButtonItem {

    //便利构造函数
    /// 创建 UIBarButtonItem
    ///
    /// - parameter title:    title
    /// - parameter fontSize: fontSize，默认 16 号
    /// - parameter target:   target
    /// - parameter action:   action
    ///
    /// - returns: UIBarButtonItem
    convenience init(title: String,fontsize: CGFloat = 16,target: AnyObject?, action: Selector,isBack: Bool = false) {
        
        let btn: UIButton = UIButton.cz_textButton(title, fontSize: fontsize, normalColor: UIColor.darkGray(), highlightedColor: UIColor.orange())
            btn.addTarget(target, action: action, for: .touchUpInside)
        
        if isBack {
            let imageName = "navigationbar_back_withtext"
            btn.setImage(UIImage(named: imageName), for: UIControlState(rawValue:0))
           btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
            btn.sizeToFit()
        }
        //self.init 实例化
        self.init(customView: btn)
    }
}
