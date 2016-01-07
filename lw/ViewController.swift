//
//  ViewController.swift
//  lw
//
//  Created by Cryptoc1 on 1/5/16.
//  Copyright © 2016 Cryptoc1. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var webview: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let screenSize = ScreenSize()
        self.view.setFrameSize(NSSize(width: screenSize.width, height: screenSize.height))
        self.view.setFrameOrigin(NSPoint(x: 0, y: 0))
        let defaults = NSUserDefaults.standardUserDefaults()
        if let url = defaults.URLForKey("wallpaperURL") {
            if url.absoluteString == "" {
                self.webview.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: "http://nyan.cat")!))
            } else {
                self.webview.mainFrame.loadRequest(NSURLRequest(URL: url))
            }
        } else {
            self.webview.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: "http://nyan.cat")!))
        }
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

