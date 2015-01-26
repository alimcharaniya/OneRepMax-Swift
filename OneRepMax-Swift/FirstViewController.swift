//
//  FirstViewController.swift
//  OneRepMax-Swift
//
//  Created by Alim Charaniya on 1/13/15.
//  Copyright (c) 2015 Alim Charaniya. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    @IBOutlet weak var weight: UITextField!
    
   
    @IBOutlet weak var reps: UISegmentedControl!
    
    
    
    @IBOutlet weak var oneRep: UILabel!
    
    //convert var weight to type double for calculation
    
    var weightDouble:Double = 14
    
    var repsDouble:Double = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Calculate(sender: UIButton) {
        
        
        NSLog("Weight = \(weight.text)")
        
        NSLog("reps = \(reps.selectedSegmentIndex)")
        
        
    }
    
}
    
    




