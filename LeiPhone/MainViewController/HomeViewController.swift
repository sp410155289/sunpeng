//
//  HomeViewController.swift
//  LeiPhone
//
//  Created by 孙鹏 on 2018/5/7.
//  Copyright © 2018年 孙鹏. All rights reserved.
//

import UIKit


class HomeViewController: RootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var array : Array<Int> = []
        var i = 1
        while array.count < 100 {
            array.append(i)
            i += 1
        }
        print(array)

//        searchNumber(<#T##n: Int##Int#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchNumber(_ n: Int) -> Int {
        
        
        return 0;
    }

    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var count = 0
        var strSet : Set<String> = []
        var setCount = strSet.count
        let n = s.count
        var i = 0
        var j = 0
        while i < n && j < n {
            setCount = strSet.count
            let insertStr = String(s[s.index(s.startIndex, offsetBy: j) ..< s.index(s.startIndex, offsetBy: j + 1)])
            strSet.insert(insertStr)
            
            if setCount == strSet.count {
                
                let startStr = String(s[s.index(s.startIndex, offsetBy: i) ..< s.index(s.startIndex, offsetBy: i + 1)])
                strSet.remove(startStr)
                i += 1
            }
            else
            {
                j += 1
            }
            
            if count < strSet.count {
                count = strSet.count
            }
        }
        
        
        print(count, strSet)
        return count
    }
    
    

    
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//
//        var length = 0
//        var stringArray = [String]()
//
//        for i in 0..<s.count {
//            let a = s[s.index(s.startIndex, offsetBy: i)..<s.index(s.startIndex, offsetBy: i + 1)]
//            stringArray.append(String(a))
//
//        }
//
//        for _ in stringArray {
//
//            if (stringArray.count > 0) {
//
//                let iLength = countMaxLengthStringWithArray(stringArray)
//
//                if (length < iLength) {
//                    length = iLength
//                }
//                stringArray.remove(at: 0)
//            }
//        }
//
//
//
//
//        print(length)
//
//
//        return length
//    }
    
    func countMaxLengthStringWithArray(_ arr: Array<String>) -> Int {
        
        var array = [String]()
        var length = 0
        
        for i in 0..<arr.count {
            
            let a = arr[i]
            for n in array {
                if (n == a) {
                    
                    if (length < array.count) {
                        length = array.count
                    }
                    
                    array.removeAll()
                }
            }
            
            
            array.append(String(a))
            if (length < array.count) {
                length = array.count
            }
            
            
        }
        
        return length
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

