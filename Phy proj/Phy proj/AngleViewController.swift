//
//  AngleViewController.swift
//  Phy proj
//
//  Created by Joey Shum on 2018-01-24.
//  Copyright © 2018 Joey Shum. All rights reserved.
//

import UIKit

class AngleViewController: UIViewController {


    @IBOutlet var xAngle: UITextField!
    @IBOutlet var airAngle: UITextField!
    @IBOutlet var refractiveIndex: UITextField!
    @IBOutlet var label: UILabel!
    @IBAction func goButton(_ sender: Any) {
        
        
        let r = CGFloat(Double(refractiveIndex.text!)!)
        var angleXOutput = CGFloat(123.123)
        var angleAirOutput = CGFloat(123.123)
        
        if refractiveIndex.text != "" {
            
            if xAngle.text == "" && airAngle.text == "" {
                
                
                label.text = "error 2"
                
            }else{
                
                if xAngle.text == "" {
                    // find angle in material X
                    let a = CGFloat(Int(airAngle.text!)!)
                    
                    angleXOutput = asin(sin(a * CGFloat(M_PI)/180) / r) / CGFloat(M_PI)*180
                    
                    label.text = "The angle in material X is \(round(angleXOutput*100)/100)"
                    
                } else if airAngle.text == "" {
                    let x = CGFloat(Int(xAngle.text!)!)
                    //find angle in air
                    angleAirOutput = asin(r*(sin(x * CGFloat(M_PI)/180))) / CGFloat(M_PI)*180
                    
                    label.text = "The angle in air is \(round(angleAirOutput*100)/100)"
                    
                } else {
                    
                    label.text = "Error 1"
                }

            }
            
        }else{
            
            label.text = "Error 3"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
