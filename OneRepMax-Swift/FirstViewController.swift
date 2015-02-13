//
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
        
        //do some type casting to convert text to double for calculations
        var repsDouble = (reps.text as NSString).doubleValue
        var weightDouble = (weight.text as NSString).doubleValue
    
        
        //note to self and dave.. See if there is a way to clean up this code by turning the error box code into a single function..
        //see if you could call the function three times and pass the error message as a parameter to clean up this code...
        
        
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
        
        else {
            
        NSLog("Weight = \(weight.text)")
        NSLog("Reps = \(reps.text)")
        
        //initialize and set one rep max variable with formula
        var oneRep: Double = round(weightDouble * (1 + repsDouble/30))
        
        println("\(oneRep.description)")
        
        }
}
}



    





