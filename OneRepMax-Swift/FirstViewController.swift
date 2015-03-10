
//  FirstViewController.swift
//  OneRepMax-Swift
//
//  Created by Alim Charaniya on 1/13/15.
//  Copyright (c) 2015 Alim Charaniya. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    //declare local variables within firstViewControllerClass
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var reps: UITextField!
    
    @IBOutlet weak var oneRepLabel: UILabel!
    
    @IBOutlet weak var log: UIButton!
    
    var oneRep: Double = 0.0
    
    //default functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //function for when calculate button is pressed
    @IBAction func Calculate(sender: UIButton) {
        
        //type casting
        var repsDouble = (reps.text as NSString).doubleValue
        var weightDouble = (weight.text as NSString).doubleValue
    
        
        //error checking alert boxes
        if (repsDouble > 10) {
            
            var alertView = UIAlertView();
            alertView.addButtonWithTitle("OK");
            alertView.title = "Error";
            alertView.message = "Please enter a value for reps between 1 and 10. ";
            alertView.show();
            
        }
            
        else if(weightDouble < 1){
            var alertView = UIAlertView();
            alertView.addButtonWithTitle("OK");
            alertView.title = "Error";
            alertView.message = "Please enter a value for weight lifted. ";
            alertView.show();
        }
            
        else if (repsDouble < 1){
            var alertView = UIAlertView();
            alertView.addButtonWithTitle("OK");
            alertView.title = "Error";
            alertView.message = "Please enter a value for number of reps. ";
            alertView.show();
            
        }
        
        //all fields filled out correctly
        else {
            
        NSLog("Weight = \(weight.text)")
        NSLog("Reps = \(reps.text)")
        
        //initialize and set one rep max variable with formula
        oneRep = round(weightDouble * (1 + repsDouble/30))
        
        println("One rep max = \(oneRep.description)")
            
        oneRepLabel.text = "\(oneRep.description) Lbs"
            
        log.enabled = true
        }
        
    }
        //log button function when pressed
        @IBAction func log(sender: AnyObject) {
            
            println("Calculate button pressed")
            
    }
        //disable log button based on certain constraints
        @IBAction func logDisable(sender: AnyObject) {
        
        log.enabled = false
            println("Disabling log button")
    }
    
}



    





