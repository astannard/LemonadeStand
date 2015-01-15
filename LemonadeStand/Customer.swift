//
//  Customer.swift
//  LemonadeStand
//
//  Created by Andy on 15/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import Foundation

class Customer{
    init(){
        var random = arc4random_uniform(10)
        taste = Double(random) / 10.0
    }
    
    var taste:Double = 0.0
    
    
    func preference() -> String {
        if(taste <= 0.4){
            return "acidic"
        }
        else if(taste <= 0.6)
        {
            return "neutral"
        }
        else
        {
            return "weak"
        }
    }
    
}