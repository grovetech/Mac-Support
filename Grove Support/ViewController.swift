//
//  ViewController.swift
//  Grove Support
//
//  Created by Jon Brown on 6/12/19.
//  Copyright © 2019 Jon Brown. All rights reserved.
//

import Cocoa
import WebKit
import LaunchAtLogin

class ViewController: NSViewController {
    
    @IBOutlet var mainView: NSView!
    @IBOutlet var webView: WKWebView!
    
    
    var currntSeg : Int = 1
    
    @IBOutlet var launchLogin: NSButton!
    @IBAction func LoginPref(_ sender: AnyObject) {
        switch launchLogin.state {
        case .on:
            print("on")
            LaunchAtLogin.isEnabled = true
            print(LaunchAtLogin.isEnabled)
            let defaults = UserDefaults.standard
            defaults.set(true, forKey: "loginPref")
        case .off:
            print("off")
            LaunchAtLogin.isEnabled = false
            print(LaunchAtLogin.isEnabled)
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "loginPref")
        case .mixed:
            print("mixed")
            LaunchAtLogin.isEnabled = false
            print(LaunchAtLogin.isEnabled)
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "loginPref")
        default: break
        }
    }
    
    @IBOutlet var acSwitch: NSSegmentedControl!
    @IBAction func SwitchButton(_ sender: AnyObject) {
        switch acSwitch.selectedSegment {
        case 0:
            if let url = Bundle.main.url(forResource: "first_tab", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        case 1:
            if let url = Bundle.main.url(forResource: "blog", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        case 2:
            if let url = Bundle.main.url(forResource: "info", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        case 3:
            if let url = Bundle.main.url(forResource: "store", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        case 4:
            if let url = Bundle.main.url(forResource: "calendar", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        default:
            if let url = Bundle.main.url(forResource: "first_tab", withExtension: "html") {
                webView.load(URLRequest(url: url))
            }
            break
        }
        currntSeg = acSwitch.selectedSegment
        print("Selected Seg: \(acSwitch.selectedSegment)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "first_tab", withExtension: "html") {
            webView.load(URLRequest(url: url))
        }
        
//        LaunchAtLogin.isEnabled = true
//        print(LaunchAtLogin.isEnabled)
//        let defaults = UserDefaults.standard
//        defaults.set(true, forKey: "loginPref")
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func closeButtonAction(_ sender: NSButton) {
        NSApp.terminate(self)
    }
    
}
