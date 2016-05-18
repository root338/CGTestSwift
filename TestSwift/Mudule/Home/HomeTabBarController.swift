//
//  HomeTabBarController.swift
//  TestSwift
//
//  Created by DY on 16/1/29.
//  Copyright © 2016年 -. All rights reserved.
//

import Foundation
import UIKit

class HomeTabBarController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    class func createHomeTabBarController() ->HomeTabBarController {
        
        let homeTabBar  = HomeTabBarController()
        
        let backgroundColor = UIColor.whiteColor()
        let homeVC      = HomeViewController()
        homeVC.view.backgroundColor = backgroundColor
        homeVC.tabBarItem   = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 0)
        let homeNavi    = HomeNavigationController(rootViewController: homeVC)
        
        let myVC        = MyPageViewController()
        myVC.view.backgroundColor   = backgroundColor
        myVC.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Favorites, tag: 1)
        let myNavi      = MyPageNavigationController(rootViewController:myVC)
        
        let vcs         = [homeNavi, myNavi]
        
        homeTabBar.setViewControllers(vcs, animated: false)
        
        return homeTabBar
    }
}

