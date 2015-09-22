//
//  CreateAccountRootViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/17/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class CreateAccountRootViewController: UIViewController {
    
    var didClickSignIn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(didClickSignIn) {
            performSegueWithIdentifier("showCreateAccountSegue", sender: nil)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
