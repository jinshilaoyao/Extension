//
//  NSDate+Extension.swift
//  测试-05-时间
//
//  Created by male on 15/10/31.
//  Copyright © 2015年 itheima. All rights reserved.
//

import Foundation

extension Date {
    
    /// 将新浪微博格式的字符串转换成日期
    static func sinaDate(_ string: String) -> Date? {
        // 1. 转换成日期
        let df = DateFormatter()
        
        df.locale = Locale(identifier: "en")
        df.dateFormat = "EEE MMM dd HH:mm:ss zzz yyyy"
        
        return df.date(from: string)
    }
    
    /**
        返回当前日期的描述信息
    
        刚刚(一分钟内)
        X分钟前(一小时内)
        X小时前(当天)
    
        昨天 HH:mm(昨天)
        MM-dd HH:mm(一年内)
        yyyy-MM-dd HH:mm(更早期)
    */
    var dateDescription: String {
        
        // 取出当前日历 - 提供了大量的日历相关的操作函数
        let calendar = Calendar.current
        
        // 处理今天的日期
        if calendar.isDateInToday(self) {
            
            let delta = Int(Date().timeIntervalSince(self))

            if delta < 60 {
                return "刚刚"
            }
            if delta < 3600 {
                return "\(delta / 60) 分钟前"
            }
            
            return "\(delta / 3600) 小时前"
        }
        
        // 非今天的日期
        var fmt = " HH:mm"
        if calendar.isDateInYesterday(self) {
            fmt = "昨天" + fmt
        } else {
            
            fmt = "MM-dd" + fmt
            
            // 直接获取`年`的数值
            //print(canlendar.component(.Year, fromDate: self))
            
            // 比较两个日期之间是否有一个完整的年度差值
            let comps = (calendar as NSCalendar).components(.year, from: self, to: Date(), options: [])

            if comps.year! > 0 {
                fmt = "yyyy-" + fmt
            }
        }
        
        // 根据格式字符串生成描述字符串
        let df = DateFormatter()
        
        df.dateFormat = fmt
        df.locale = Locale(identifier: "en")
        
        return df.string(from: self)
    }
}
