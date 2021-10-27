//
//  CustomTabBarController.swift
//  DalTube
//
//  Created by 김선오 on 2021/10/27.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        setTabBarItemColor()
        // Do any additional setup after loading the view.
    }
    
    // 탭바 아이템 색상 검은색으로 만들기
    func setTabBarItemColor() {
        UITabBar.appearance().tintColor = UIColor(ciColor: .black)
    }
    
    func setTabBar() {
                
        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC"),
              let shortsVC = self.storyboard?.instantiateViewController(identifier: "ShortsVC"),
              let addVC = self.storyboard?.instantiateViewController(identifier: "AddVC"),
              let subVC = self.storyboard?.instantiateViewController(identifier: "SubVC"),
              let storeVC = self.storyboard?.instantiateViewController(identifier: "StoreVC")
        else {return}
        
        homeVC.tabBarItem.title = "홈"
        homeVC.tabBarItem.image = UIImage(named: "homeIcon")
        homeVC.tabBarItem.selectedImage = UIImage(named: "homeIcon.fill")
        
        shortsVC.tabBarItem.title = "Shorts"
        shortsVC.tabBarItem.image = UIImage(named: "shortsIcon")
        shortsVC.tabBarItem.selectedImage = UIImage(named: "shortsIcon.fill")
        
        addVC.tabBarItem.title = "추가"
        addVC.tabBarItem.image = UIImage(named: "addIcon")
        addVC.tabBarItem.selectedImage = UIImage(named: "addIcon.fill")
        
        subVC.tabBarItem.title = "구독"
        subVC.tabBarItem.image = UIImage(named: "subIcon")
        subVC.tabBarItem.selectedImage = UIImage(named: "subIcon.fill")
        
        storeVC.tabBarItem.title = "보관함"
        storeVC.tabBarItem.image = UIImage(named: "storeIcon")
        storeVC.tabBarItem.selectedImage = UIImage(named: "storeIcon.fill")
        
        setViewControllers([homeVC, shortsVC, addVC, subVC, storeVC], animated: true)
    }

}
