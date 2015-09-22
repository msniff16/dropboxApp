//
//  SignInRootViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/17/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {

    var didClickSignIn: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        if(didClickSignIn) {
            performSegueWithIdentifier("showLoginSegue", sender: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
