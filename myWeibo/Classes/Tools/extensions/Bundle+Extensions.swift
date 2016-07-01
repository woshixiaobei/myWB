//
//  Bundle+Extension.swift
//  Weibo
//
//  Created by 刘凡 on 16/6/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

import Foundation

extension Bundle {
    /// 从 Bundle 中加载命名空间名称
    var namespace: String {
        return Bundle.main().infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    /// 使用指定类名创建对应的 class
    ///
    /// - parameter clsName: clsName
    ///
    /// - returns: 对应的类
    func anyClass(clsName: String) -> AnyClass? {
        
        if let cls = NSClassFromString(clsName) {
            return cls
        }
        
        if let cls = NSClassFromString(namespace + "." + clsName) {
            return cls
        }
        
        return nil
    }
}
