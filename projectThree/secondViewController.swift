//
//  secondViewController.swift
//  projectThree
//
//  Created by User on 5/5/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
    
    override func viewDidLoad() {
        
        
        
        
        
        
        
        super.viewDidLoad()

        
        self.navigationItem.title = "Tip Calculator";

    }
    

    
}
