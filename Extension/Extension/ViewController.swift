//
//  ViewController.swift
//  Extension
//
//  Created by yesway on 16/9/20.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        printLogDebug(message: 1)
        
        // 被匹配的字符串
        let str = "AAAA<a href=\"http://weibo.com/\">微博 weibo.com</a>BBBB"
        
        print(str.href()?.link)
        print(str.href()?.text)
        
        print(Date.sinaDate("Sat Oct 31 03:32:05 +0800 2015")?.dateDescription)
        print(Date.sinaDate("Sat Oct 30 03:32:05 +0800 2015")?.dateDescription)
        print(Date.sinaDate("Sat May 31 03:32:05 +0800 2015")?.dateDescription)
        print(Date.sinaDate("Sat Oct 31 03:32:05 +0800 2014")?.dateDescription)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

