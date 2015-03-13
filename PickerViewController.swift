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
    
    //constant set as an array to hold different types of lift to put in pickerView
    let pickerData = ["Bench Press", "Squat", "Hang Clean", "Deadlift", "Curl","Shoulder Press","Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    
}