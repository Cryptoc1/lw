//
//  LWWindowController.swift
//  lw
//
//  Created by Cryptoc1 on 1/5/16.
//  Copyright © 2016 Cryptoc1. All rights reserved.
//

import Cocoa

class LWWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        self.window!.level = Int(CGWindowLevelForKey(.DesktopIconWindowLevelKey))
        let screenSize = ScreenSize()
        var frame = self.window!.frame
        frame.size = CGSizeMake(screenSize.width, screenSize.height)
        frame.origin.x = 0
        frame.origin.y = 0
        self.window!.setFrame(frame, display: true)
        self.window!.movable = true
        self.window!.collectionBehavior = .CanJoinAllSpaces
    }

}

struct ScreenSize {
    var width = NSScreen.mainScreen()!.frame.size.width
    var height = NSScreen.mainScreen()!.frame.size.height
}