//
//  InterfaceController.swift
//  Watch Extension
//
//  Created by Lucas Farah on 11/8/15.
//  Copyright © 2015 Lucas Farah. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  
  @IBOutlet var table: WKInterfaceTable!
  let arr = ["Lucas","Troy"]
  
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
table.setNumberOfRows(self.arr.count, withRowType: "Table")
      
      for(index,name) in arr.enumerate()
      {
        let row = table.rowControllerAtIndex(index) as! Table
        
        row.lblUser.setText(name)
        row.imgvUser.setImageNamed(name)
      }
  }

  override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
    self.pushControllerWithName("showDetails", context: arr[rowIndex])
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
