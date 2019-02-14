//
//  ViewController.swift
//  LeiPhone
//
//  Created by 孙鹏 on 2018/5/3.
//  Copyright © 2018年 孙鹏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog("123")
        
        let btn = UIButton(frame:CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.backgroundColor = UIColor.init(red: 100/255.0, green: 100/255.0, blue: 100/255.0, alpha: 1.0)
        btn.layer.cornerRadius = btn.frame.size.width/2
        
        self.view.addSubview(btn)
        self.test()
    }
    final func test() {
        NSLog("123")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

