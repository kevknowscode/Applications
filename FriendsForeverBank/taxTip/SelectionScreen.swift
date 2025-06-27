//
//  SelectionScreen.swift
//  taxTip
//
//  Created by Kev on 6/26/25.
//

import UIKit

class SelectionScreen: UIViewController{

    
    @IBOutlet var welcomeMessage: UILabel!
    @IBOutlet var checkAccountButton: UIButton!
    
    
    @IBAction func contactSupportTapped(_ sender: UIButton) {
        
        sender.setTitle("Call 917-484-4840", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
      
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
