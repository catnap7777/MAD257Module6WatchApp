//
//  InterfaceController.swift
//  MAD257Module6WatchApp WatchKit Extension
//
//  Created by Karen Mathes on 2/23/21.
//  Copyright © 2021 TygerMatrix Software. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var flipLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    @IBAction func flipButtonPressed() {
    
        flipLabel.setText("Flipping the coin.")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.flipLabel.setText("Flipping the coin..")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.flipLabel.setText("Flipping the coin...")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    let randomFlip = Bool.random()
                    
                    if randomFlip { //true
                        self.flipLabel.setText("It's Heads")
                    } else {        //false
                        self.flipLabel.setText("It's Tails")
                    }
                }
            }
            
        }
       
       
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
