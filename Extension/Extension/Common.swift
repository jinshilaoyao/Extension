//
//  Common.swift
//  测试-03-printlog
//
//  Created by male on 15/10/31.
//  Copyright © 2015年 itheima. All rights reserved.
//

import Foundation

func printLogDebug<T>(message: T,
    file: String = #file,
    method: String = #function,
    line: Int = #line)
{
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}
