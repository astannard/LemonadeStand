//
//  OrderSheet.swift
//  LemonadeStand
//
//  Created by Andy Stannard on 14/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import Foundation

class OrderSheet{
    
    var cost = 0
    var lemonOrder = 0
    var iceOrder = 0
    
    
    func addLemonToOrder(cost: Int)
    {
        lemonOrder += 1
        self.cost -= cost
    }
    
    func removeLemonFromOrder(cost: Int)
    {
        lemonOrder -= 1
        self.cost += cost
    }
    
    func addIceToOrder(cost: Int)
    {
        iceOrder += 1
        self.cost -= cost
    }
    
    func removeIceFromOrder(cost: Int)
    {
        iceOrder -= 1
        self.cost += cost
    }
}