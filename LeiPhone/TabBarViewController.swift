//
//  TabBarViewController.swift
//  LeiPhone
//
//  Created by 孙鹏 on 2018/5/7.
//  Copyright © 2018年 孙鹏. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let home = HomeViewController()
        home.title = "资讯"
        let homeNav = UINavigationController.init(rootViewController: home)
        
        let openClass = OpenClassViewController()
        openClass.title = "公开课"
        let openClassNav = UINavigationController.init(rootViewController: openClass)
        
        let mooc = MOOCViewController()
        mooc.title = "精品课"
        let moocNav = UINavigationController.init(rootViewController: mooc)
        
        let mine = MineViewController()
        mine.title = "我的"
        let mineNav = UINavigationController.init(rootViewController: mine)
        
        self.viewControllers = [homeNav, openClassNav, moocNav, mineNav]
        
        let items = self.tabBar.items!
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.init(red: 254/255.0, green: 117/255.0, blue: 76/255.0, alpha: 1.0)], for: UIControlState.selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.init(red: 55/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1.0)], for: UIControlState.normal)
        
        for item in items {
            
            if (item.title == "资讯")
            {
                item.image = UIImage.init(named: "news")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                item.selectedImage = UIImage.init(named: "news_ac")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            }
            else if (item.title == "公开课")
            {
                item.image = UIImage.init(named: "live")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                item.selectedImage = UIImage.init(named: "live_ac")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            }
            else if (item.title == "精品课")
            {
                item.image = UIImage.init(named: "mooc")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                item.selectedImage = UIImage.init(named: "mooc_ac")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            }
            else
            {
                item.image = UIImage.init(named: "profile")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
                item.selectedImage = UIImage.init(named: "profile_ac")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            }
            
        }
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
