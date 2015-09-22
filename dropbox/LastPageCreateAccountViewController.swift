//
//  LastPageCreateAccountViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/18/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class LastPageCreateAccountViewController: UIViewController, UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onCreateAccount(sender: AnyObject) {
        
        let actionSheet = UIActionSheet(title: "Before registering, you must accept the terms of service.", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "I Agree", "View Terms")
        actionSheet.delegate = self
        actionSheet.showInView(self.view)
        
    }
    
    func actionSheet(sheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        print(buttonIndex)
        if (buttonIndex == 1) {
            performSegueWithIdentifier("accountCreated", sender: self)
        }
        else if (buttonIndex == 2) {
            performSegueWithIdentifier("viewTerms", sender: self)
        }
        
    }

   
}
