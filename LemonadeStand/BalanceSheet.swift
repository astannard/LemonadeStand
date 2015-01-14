//
//  BalanceSheet.swift
//  LemonadeStand
//
//  Created by Andy Stannard on 14/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import Foundation

class BalanceSheet {
    
    var cash = 10
    var lemonStock = 0
    var iceStock = 0
    
    
    func buyLemon(cost: Int)
    {
        lemonStock += 1
        cash -= cost
    }
    
    func returnLemon(cost: Int)
    {
        lemonStock -= 1
        cash += cost
    }
    
    func buyIce(cost: Int)
    {
        iceStock += 1
        cash -= cost
    }
    
    
    
}