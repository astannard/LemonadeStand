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
    var mix = DailyMix()
    var lemonade = Lemonade()
    let kLemonCost = 2
    let kIceCost = 1
    
    var customers:[Customer] = []
   
    
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
    
    
    
    @IBAction func test(sender: AnyObject) {
        println("aaaaaaa")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
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
        updateUI()
    }
    
    @IBAction func removeIcecubeFromOrderPressed(sender: AnyObject) {
        println("take some ice back")
        order.removeIceFromOrder(kIceCost)
        updateUI()
    }
    
    
    // Mixology Actions
    
    @IBAction func addLemonToTheMixPressed(sender: UIButton) {
        mix.addLemonToMix(balance)
        updateUI()
    }
    
    
    @IBAction func removeLemonFromTheMixPressed(sender: UIButton) {
        mix.removeLemonFromMix(balance)
        updateUI()
    }
    
    
    @IBAction func addIceToTheMixPressed(sender: UIButton) {
        mix.addIceToMix(balance)
        updateUI()
    }
    
    @IBAction func removeIceFromTheMixPressed(sender: UIButton) {
        mix.removeIceFromMix(balance)
        updateUI()
    }
    
    @IBAction func makePurchaseClicked(sender: AnyObject) {
        makePurchases()
        updateUI()
    }
    
    //Start selling
    @IBAction func startSelling(sender: AnyObject) {
        println("DO IT!")
        getCustomers()
        lemonade.mixIt(mix)
        sellIt()
        mix.reset()
        updateUI()
    }
    

    
    //Helper functions
    func updateUI(){
        updateBalances()
        updateOrder()
        updateMix()
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
    
    func updateMix(){
        lemonsInTheMixLabel.text = "\(mix.lemons)"
        icecubesInTheMixLabel.text = "\(mix.icecubes)"
    }
    
    func makePurchases(){
        if(order.cost <= balance.cash) {
            balance.handleOrder(order)
        }
        else{
            println("Too ambitious scale back your spending")
        }
    }
    
    func getCustomers(){
        var customercount = Int(arc4random_uniform(10))
        customers = []
        for var i = 0; i < customercount; i++ {
            self.customers.append(Customer())
        }
        
    }
    
    func sellIt()
    {
        for (index, customer) in enumerate(customers) {
            if(customer.preference() == self.lemonade.flavour())
            {
                self.balance.cash += 1
                println("show me the money")
            }
            else
            {
                println("never mind")
            }
        }
    }
    

}

