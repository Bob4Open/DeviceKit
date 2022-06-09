//
//  ViewController.swift
//  iOSDemo
//
//  Created by Bob4Open on 2022/6/8.
//

import UIKit
import DeviceKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let device1 = Device.current
        print("device1: \(device1.generation())")
        
        
        let device2 = Device("iPhone14,4")
        print("device2: \(device2.generation())")
    }


}

