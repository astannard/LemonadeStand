//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Andy Stannard on 13/01/2015.
//  Copyright (c) 2015 Andy Stannard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var balance = BalanceSheet()
    var order = OrderSheet()
    
    let kLemonCost = 2
    let kIceCost = 1
    
    
    
    //Balnaces
    @IBOutlet weak var moneyBalanceLabel: UILabel!
    @IBOutlet weak var lemonBalanceLabel: UILabel!
    @IBOutlet weak var icecubeBalanceLabel: UILabel!
    
    
    //Purchase Supplies
    @IBOutlet weak var lemonsToBuyLabel: UILabel!
    @IBOutlet weak var icecubesToBuyLabel: UILabel!
    
    
    //Mixology Labl
    @IBOutlet weak var lemonsInTheMixLabel: UILabel!
    @IBOutlet weak var icecubesInTheMixLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Purchasing Actions
    
    @IBAction func increaseLemonOrderPressed(sender: AnyObject) {
        println("another lemon")
        order.addLemonToOrder(kLemonCost)
        updateUI()
    }
    
    
    @IBAction func removeLemonFromOrderPressed(sender: AnyObject) {
        println("take that lemon away")
        order.removeLemonFromOrder(kLemonCost)
        updateUI()
        
    }
    

    @IBAction func increaseTheIcePressed(sender: UIButton) {
       println("whats cooler than cool; Ice cold")
        order.addIceToOrder(kIceCost)
    }
    
    @IBAction func removeIcecubeFromOrderPressed(sender: AnyObject) {
        println("take some ice back")
        order.removeIceFromOrder(kIceCost)
    }
    
    
    // Mixology Actions
    
    @IBAction func addLemonToTheMixPressed(sender: UIButton) {
        
        updateUI()
    }
    
    
    @IBAction func removeLemonFromTheMixPressed(sender: UIButton) {
    }
    
    
    @IBAction func addIceToTheMixPressed(sender: UIButton) {
        
        updateUI()
    }
    
    @IBAction func removeIceFromTheMixPressed(sender: UIButton) {
    }
    
    
    //Start selling
    @IBAction func startSelling(sender: AnyObject) {
        println("DO IT!")
    }
    

    
    //Helper functions
    func updateUI(){
        updateBalances()
        updateOrder()
        
    }
    
    func updateBalances(){
        
        lemonBalanceLabel.text = "\(balance.lemonStock)"
        moneyBalanceLabel.text = "\(balance.cash)"
        icecubeBalanceLabel.text = "\(balance.iceStock)"
    }
    
    func updateOrder(){
        lemonsToBuyLabel.text = "\(order.lemonOrder)"
        icecubesToBuyLabel.text = "\(order.iceOrder)"
    }
}

