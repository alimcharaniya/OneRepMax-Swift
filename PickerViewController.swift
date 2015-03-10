//
//  PickerViewController.swift
//  OneRepMax-Swift
//
//  Created by Alim Charaniya on 2/22/15.
//  Copyright (c) 2015 Alim Charaniya. All rights reserved.
//

import Foundation

import UIKit

class PickerViewController: UIViewController{
    
    @IBOutlet weak var liftType: UIPickerView!
    
    
    
    
    let pickerData = ["Bench Press", "Squat", "Hang Clean"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}