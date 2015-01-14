//
//  DailyMix.swift
//  LemonadeStand
//
//  Created by Andy on 14/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import Foundation

class DailyMix {
    
    var lemons = 0
    var icecubes = 0
    
    
    func addLemonToMix(balance: BalanceSheet)
    {
        if(balance.lemonStock == 0){
            println("sorry your lack lemons in your life")
        }
        else{
            lemons += 1
            balance.lemonStock -= 1
        }
        
    }
    
    func removeLemonFromMix(balance: BalanceSheet)
    {
        if(lemons>0)
        {
            lemons -= 1
            balance.lemonStock += 1
        }
        
    }
    
    func addIceToMix(balance: BalanceSheet)
    {
        if(balance.iceStock>0){
            icecubes += 1
            balance.iceStock -= 1
        }
        else{
            println("no more ice do to global warming or bad supply management")
        }
    }
    
    func removeIceFromMix(balance: BalanceSheet)
    {
        if(icecubes>0)
        {
            icecubes -= 1
            balance.iceStock += 1
        }
    }
    
    func reset(){
        self.lemons = 0
        self.icecubes = 0
    }
}