//
//  AboutViewController.swift
//  lw
//
//  Created by Cryptoc1 on 1/6/16.
//  Copyright © 2016 Cryptoc1. All rights reserved.
//

import Cocoa

class AboutViewController: NSViewController {

    @IBOutlet weak var versionLabel: NSTextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let version = NSBundle.mainBundle().infoDictionary!["CFBundleShortVersionString"] as? String {
            self.versionLabel.stringValue = "v\(version)"
        }
        
        // Make sure the window goes into focus
        self.view.window?.orderFront(self)
        self.view.window?.collectionBehavior = .Default
    }
    
    @IBAction func openGithubLink(sender: NSButton) {
        let url = NSURL(string: "https://github.com/cryptoc1/lw")
        NSWorkspace.sharedWorkspace().openURL(url!)
    }
}