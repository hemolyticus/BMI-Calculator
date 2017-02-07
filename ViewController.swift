//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Mel John del Barrio on 7/02/17.
//  Copyright © 2017 Mel John del Barrio. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    //Outlets
    
    @IBOutlet weak var segControl: NSSegmentedControl!
    
    @IBOutlet weak var txtW: NSTextField!
    
    @IBOutlet weak var txtH: NSTextField!
    
    @IBOutlet weak var txtBMI: NSTextField!

    @IBOutlet weak var sliderW: NSSlider!
    
    @IBOutlet weak var sliderH: NSSlider!
    
    @IBOutlet weak var lblWeight: NSTextField!
    
    @IBOutlet weak var lblHeight: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    func setBMI()
    {
        var BMI = 0.0
        
        if segControl.selectedSegment == 0
        {
            //US
            BMI = sliderW.doubleValue / (sliderH.doubleValue * sliderH.doubleValue) * 703
        }
        else{
            //Metric
            BMI = sliderW.doubleValue / ((sliderH.doubleValue / 100 ) * (sliderH.doubleValue / 100))
        }
        
        txtBMI.stringValue = String(format: "%.1f", BMI)
    }
    
    


}

