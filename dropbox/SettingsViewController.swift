//
//  SettingsViewController.swift
//  dropbox
//
//  Created by Matthew Sniff on 9/17/15.
//  Copyright © 2015 Matthew Sniff. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
    }


}
