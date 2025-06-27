//
//  checkingScreen.swift
//  taxTip
//
//  Created by Kev on 6/26/25.
//

import UIKit

class checkingScreen: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct message
    {
        var balance: String
        var amount: String
    }
    
    let data: [message] = [
        message(balance: "Checking", amount: "$25,000"),
        message(balance: "Savings", amount: "$55,000"),
        message(balance: "Retirement", amount: "$125,000")
    ]
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
         
       

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let d = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customTableViewCell
        cell.balanceLabel.text = d.balance
        cell.amountLabel.text = d.amount
        return cell
        
    }

}
