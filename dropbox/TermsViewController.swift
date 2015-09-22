//
//  TermsViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/18/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        
    }

    // go back to create account page
    @IBAction func onDone(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
}
