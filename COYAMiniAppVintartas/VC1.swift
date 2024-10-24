//
//  VC1.swift
//  COYAMiniAppVintartas
//
//  Created by NICHOLAS VINTARTAS on 10/24/24.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var invLabel: UILabel!
    
    var inventory : [String] = []
    var itemSelected = 0
    var itemShown = ""
    
    func invUpdate() {
        if inventory.count > 0 {
            if itemSelected >= 0 {
                if itemSelected < inventory.count - 1 {
                    itemShown = inventory[itemSelected]
                }
                itemSelected = inventory.count - 1
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
        invUpdate()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let invSender = segue.destination as! VC2
        invSender.invRecieved = inventory
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
