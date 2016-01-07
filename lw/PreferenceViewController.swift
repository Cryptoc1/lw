//
//  PreferenceViewController.swift
//  lw
//
//  Created by Cryptoc1 on 1/6/16.
//  Copyright © 2016 Cryptoc1. All rights reserved.
//

import Cocoa

class PreferenceViewController: NSViewController {

    @IBOutlet weak var URLTextField: NSTextField!
    @IBOutlet weak var resizeCheck: NSButton!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make sure the window goes into focus
        self.view.window?.orderFront(self)
        self.view.window?.collectionBehavior = .Default
        
        if let url = self.defaults.URLForKey("wallpaperURL") {
            URLTextField.stringValue = url.absoluteString
        }
        let resize = self.defaults.integerForKey("shouldResizeImages")
        self.resizeCheck.state = resize
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        
        // Save all the settings and reinitialize the wallpaper view
        self.defaults.setURL(NSURL(string: URLTextField.stringValue)!, forKey: "wallpaperURL")
        self.defaults.setInteger(resizeCheck.state, forKey: "shouldResizeImages")
    }
    
    @IBAction func openDocs(sender: AnyObject) {
        let url = NSURL(string: "https://github.com/cryptoc1/lw/blob/master/Docs.md")
        NSWorkspace.sharedWorkspace().openURL(url!)
    }
}
