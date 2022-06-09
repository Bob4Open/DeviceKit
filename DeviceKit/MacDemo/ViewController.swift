//
//  ViewController.swift
//  MacDemo
//
//  Created by Bob4Open on 2022/6/8.
//

import Cocoa
import DeviceKit

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let device1 = Device.current
        print("device1: \(device1.generation())")
        
        let device2 = Device("MacBookPro4,1")
        print("device2: \(device2.generation())")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

