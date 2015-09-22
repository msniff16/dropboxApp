//
//  LoginScreenViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/22/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignIn(sender: AnyObject) {
        performSegueWithIdentifier("signUpSegue", sender: nil)
    }

    @IBAction func onLogin(sender: AnyObject) {
        performSegueWithIdentifier("loginSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if(segue == "signUpSegue") {
            let destinationViewController = segue.destinationViewController as! UINavigationController
            let destinationTwo = destinationViewController.childViewControllers[0] as! CreateAccountRootViewController
            destinationTwo.didClickSignIn = true
        }
        else if (segue == "loginSegue") {
            let destinationViewController = segue.destinationViewController as! UINavigationController
            let destinationTwo = destinationViewController.childViewControllers[0] as! SignInRootViewController
            destinationTwo.didClickSignIn = true
        }
        
        
    }

}
