//
//  VC2.swift
//  COYAMiniAppVintartas
//
//  Created by NICHOLAS VINTARTAS on 10/24/24.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var invLabel: UILabel!
    
    var invRecieved : [String] = []
    var itemSelected = 0
    var itemShown = ""
    
   func invUpdate() {
       if invRecieved.count > 0 {
           if itemSelected >= 0 {
               if itemSelected < invRecieved.count - 1 {
                   itemShown = invRecieved[itemSelected]
               }
               itemSelected = invRecieved.count - 1
           }
           itemSelected = 0
       }
       else {
           itemShown = "Inventory Empty"
       }
       invLabel.text = itemShown
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
      //  invUpdate()
    }
    



}
