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
    
    
    
    func handleOrder(order:OrderSheet){
        self.lemonStock += order.lemonOrder
        self.iceStock += order.iceOrder
        self.cash -= order.cost
        order.reset()
    }
    
}