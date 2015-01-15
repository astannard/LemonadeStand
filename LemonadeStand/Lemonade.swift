//
//  Lemonade.swift
//  LemonadeStand
//
//  Created by Andy on 15/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import Foundation

class Lemonade{
     var lemonadeRatio:Double = 0.0
    
    func mixIt(mix: DailyMix)
    {
        lemonadeRatio = Double(mix.lemons) / Double(mix.icecubes)
    }
    
    func flavour() -> String {
        if(lemonadeRatio >  1){
            return "acidic"
        }
        else if(lemonadeRatio == 1)
        {
            return "neutral"
        }
        else
        {
            return "weak"
        }
    }
}