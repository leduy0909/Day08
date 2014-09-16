//
//  ExtendArray.swift
//  DemoClass
//
//  Created by techmaster on 9/12/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array {
    //reverse() -> [T]
    
    //Đảo mảng trả về một mảng mới
    func daoMang() -> [T] {
        let n = self.count
//http://www.programmingsimplified.com/c-program-reverse-array
        //var tempArr: [T] = [T](count: n, repeatedValue: self[0])
        //Gán tempArr bằng self iOS sẽ copy luôn mảng self ra một mảng mới tempArr
        var tempArr =  self
        for var c = n - 1, d = 0; c >= d; c--, d++ {
            tempArr[d] = self[c]
            tempArr[c] = self[d]
        }
        return tempArr
        
    }
    //Đảo mảng trên chính mảng đó
    mutating func daoMang2() {
        let n = self.count
        //http://www.programmingsimplified.com/c-program-reverse-array
        for var c = n - 1, d = 0; c >= d; c--, d++ {
            let temp = self[c]
            self[c] = self[d]
            self[d] = temp
        }        
    }
    
     func giatritrungbinh() -> Double {
        let n = self.count
        var tong = 0
        for var i = 0 ; i < n ; ++i {
            tong += (self[i] as Int)
        }
        return (Double(tong) / Double(n))
    }
    mutating func randomPlayer() -> [T] {
        while(self.count > 11) {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        self.removeAtIndex(index)
        }
        return self
    }
}