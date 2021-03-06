//
//  CCAPreferencesViewController.swift
//  Colour Contrast Analyser
//
//  Created by Cédric Trévisan on 19/02/2015.
//  Copyright (c) 2015 Cédric Trévisan. All rights reserved.
//

import Cocoa

class CCAPreferencesController: NSWindowController, NSWindowDelegate {
    
    @IBOutlet var resultText: NSTextView!

    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func windowDidLoad() {
        super.windowDidLoad()
        resultText.string = userDefaults.stringForKey("CCAResultsFormat")
        self.window?.delegate = self
    }

    func windowWillClose(notification: NSNotification) {
        userDefaults.setObject(resultText.string, forKey: "CCAResultsFormat")
    }
}
