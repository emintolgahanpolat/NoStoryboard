//
//  TabBarViewController.swift
//  NoStoryboard
//
//  Created by Emin Tolgahan Polat on 2.02.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // let nc = UINavigationController(rootViewController: vc)
        //nc.navigationBar.isHidden = true
        //nc.setGradientBackground()
        //nc.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem()
        self.viewControllers = [ UINavigationController(rootViewController: homeTab),UINavigationController(rootViewController: searchTab),UINavigationController(rootViewController: profileTab),]
        
        if let tabItems = tabBar.items {
            let tabItem = tabItems[1]
            tabItem.badgeValue = "11"
        }
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        item.badgeValue = nil
    }
    lazy public var homeTab: HomeViewController = {
        
        let initialTabBar = HomeViewController()
        
        let title = "Home"
        
        let defaultImage = UIImage(systemName: "homekit")
        
        let selectedImage = UIImage(systemName: "homekit")
        
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem
        
        return initialTabBar
    }()
    

    
    lazy public var searchTab: MainViewController = {
        
        let initialTabBar = MainViewController()
        
        let title = "Search"
        
        let defaultImage = UIImage(systemName: "pencil")
        
        let selectedImage = UIImage(systemName: "pencil")
        
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem
        
        return initialTabBar
    }()
    
    lazy public var profileTab: OneViewController = {
        
        let initialTabBar = OneViewController()
        
        let title = "Profile"
        
        let defaultImage = UIImage(systemName: "person")
        
        let selectedImage = UIImage(systemName: "person")
        
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        
        initialTabBar.tabBarItem = tabBarItem
        
        return initialTabBar
    }()
    
}
