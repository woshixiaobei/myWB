//
//  AppDelegate.swift
//  myWeibo
//
//  Created by 小贝 on 16/7/1.
//  Copyright © 2016年 小贝. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        sleep(2)
        window = UIWindow()
        window?.backgroundColor = UIColor.white()
    window?.rootViewController = WBMainTabBarController()
        window?.makeKeyAndVisible()
        return true
    }

    

}

