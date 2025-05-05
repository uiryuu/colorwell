//
//  Untitled.swift
//  colorwell
//
//  Created by Yuze Jiang on 2025/05/05.
//

import Cocoa

class MainWindowController: NSWindowController, NSWindowDelegate {
    override var windowNibName: NSNib.Name {
      return NSNib.Name("MainWindowController")
    }

    @IBOutlet weak var expandedFalse: NSColorWell!
    @IBOutlet weak var minimalFalse: NSColorWell!
    @IBOutlet weak var defaultFalse: NSColorWell!
    @IBOutlet weak var expandedTrue: NSColorWell!
    @IBOutlet weak var minimalTrue: NSColorWell!
    @IBOutlet weak var defaultTrue: NSColorWell!
    override func windowDidLoad() {
        super.windowDidLoad()

        print("Ignores alpha = " + (NSColor.ignoresAlpha ? "true" : "false"))

        [expandedTrue, minimalTrue, defaultTrue].forEach {
            $0.supportsAlpha = true
        }

        [expandedFalse, minimalFalse, defaultFalse].forEach {
            $0.supportsAlpha = false
        }
    }
}
