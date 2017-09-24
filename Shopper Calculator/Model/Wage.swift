//
//  Wage.swift
//  Shopper Calculator
//
//  Created by Gray Zhen on 9/24/17.
//  Copyright © 2017 GrayStudio. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
    
}
