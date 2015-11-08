//
//  DetailInterfaceController.swift
//  AgentWatch
//
//  Created by Lucas Farah on 11/8/15.
//  Copyright © 2015 Lucas Farah. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

  @IBOutlet var groupUser: WKInterfaceGroup!
  @IBOutlet var lblUser: WKInterfaceLabel!
  @IBOutlet var imgvUser: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
      let str = context as! String
      
      self.lblUser.setText(str)
      self.imgvUser.setImageNamed(str)
      
      if str == "Lucas"
      {
        self.groupUser.setBackgroundColor(UIColor.greenColor())
      }
      else
      {
        self.groupUser.setBackgroundColor(UIColor.redColor())
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
