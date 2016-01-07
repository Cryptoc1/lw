//
//  AppDelegate.swift
//  lw
//
//  Created by Cryptoc1 on 1/5/16.
//  Copyright © 2016 Cryptoc1. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

    lazy var preferenceWindowController: NSWindowController? =
    {
        let theStoryboard :NSStoryboard? = NSStoryboard(name: "Main", bundle: nil)
        var thePreferenceWindowController  = theStoryboard?.instantiateControllerWithIdentifier("PreferenceWindowController") as! NSWindowController?
        return thePreferenceWindowController
    }()
    
    lazy var aboutWindowController: NSWindowController? =
    {
        let theStoryboard :NSStoryboard? = NSStoryboard(name: "Main", bundle: nil)
        var theAboutWindowController  = theStoryboard?.instantiateControllerWithIdentifier("AboutWindowController") as! NSWindowController?
        return theAboutWindowController
    }()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let img = NSImage(named: "statusicon")!
        img.template = true
        statusItem.image = img
        
        let menu = NSMenu()
        let about = NSMenuItem(title: "About", action: Selector("showAbout:"), keyEquivalent: "")
        let preferences = NSMenuItem(title: "Preferences", action: Selector("showPreferences:"), keyEquivalent: "")
        let quit = NSMenuItem(title: "Quit", action: Selector("quitLW:"), keyEquivalent: "")
        menu.addItem(about)
        menu.addItem(preferences)
        menu.addItem(NSMenuItem.separatorItem())
        menu.addItem(quit)
        self.statusItem.menu = menu
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func showAbout(sender: AnyObject?) {
        aboutWindowController!.showWindow(self)
    }
    
    func showPreferences(sender: AnyObject?) {
        preferenceWindowController!.showWindow(self)
    }
    
    func quitLW(sender: AnyObject?) {
        NSApplication.sharedApplication().terminate(self)
    }
}

