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
        self.webview.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: "http://mrdoob.com/lab/javascript/webgl/clouds/")!))
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

