//
//  secondViewController.swift
//  projectThree
//
//  Created by User on 5/5/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
    //TableView List
    var myListArray = ["Chef's Lau", "Aloha Salads", "Brick Oven Pizza", "My Cafe", "Koa Pancake"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
   
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = myListArray[indexPath.row]
        cell?.textLabel?.text = text
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    //Tip Calculator
    
    @IBOutlet weak var segConTipCal: UISegmentedControl!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var billInputText: UITextField!
    
    @IBOutlet weak var tipLabelPercentChange: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        segConTipCal.selectedSegmentIndex = -1
        
        
        
        
        
        self.navigationItem.title = "Tip Calculator";

    }
    
    //calculating tip
    
    @IBAction func calculatTip(_ sender: Any) {
    
        //let billInputText
    let billAmount = Double(self.billInputText.text ?? "") ?? 0
        //let tipPercentageOne = 0.15
       // let tipPercentageTwo = 0.18
        //let tipPercentageThree = 0.20

        

        
        
        switch
            segConTipCal.selectedSegmentIndex
        {
        
        case 0:
        //First tip calculation
        let tipAmount = (billAmount * 0.15)
        self.tipAmountLabel.text = "$\(tipAmount)"
        tipLabelPercentChange.text = "Your Tip(15%):"

        
        
        case 1:
        //Second tip calculation
        let tipAmount = (billAmount * 0.18)
        self.tipAmountLabel.text = "$\(tipAmount)"
        tipLabelPercentChange.text = "Your Tip(18%):"

        
        
        case 2:
        //Third tip calculation
        let tipAmount = (billAmount * 0.20)
        self.tipAmountLabel.text = "$\(tipAmount)"
        tipLabelPercentChange.text = "Your Tip(20%):"

        
        
        
        //Bill+Tip total
        let total = (billAmount + tipAmount)

        //let totalTwo = (billAmount + tipAmountTwo)
        
        //let totalThree = (billAmount + tipAmountThree)

        self.totalAmountLabel.text = "$\(total)"
        //self.totalAmountLabel.text = "$\(totalTwo)"
        //self.totalAmountLabel.text = "$\(totalThree)"

        
    
    
        default:
            break
        }
    
    
    }
    
    
    

    
}
