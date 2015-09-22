//
//  SignInViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/17/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIActionSheetDelegate, UITextFieldDelegate {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passTest: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailText.delegate = self
        passTest.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func onWelcome(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func onTroubleSigningIn(sender: AnyObject) {
        
        let actionSheet = UIActionSheet(title: "", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Forgot Password", "Single Sign-On")
        actionSheet.delegate = self
        actionSheet.showInView(self.view)
        
    }
    
    func actionSheet(sheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        if (buttonIndex == 0) {
            print("Forgot Password.")
        }
        else if (buttonIndex == 1) {
            print("Single Sign-On.")
        }
    
    }


}
