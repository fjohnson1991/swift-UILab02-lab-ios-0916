//
//  ViewController.swift
//  UIFunvFJ
//
//  Created by Felicity Johnson on 9/20/16.
//  Copyright © 2016 FJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PaintBucket: UIImageView!
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.redColor()
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orangeColor()
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purpleColor()
        case ("Yellow", "Yellow"):
            return UIColor.yellowColor()
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.greenColor()
        case ("Blue", "Blue"):
            return UIColor.blueColor()
        default:
            return UIColor.whiteColor()
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        switch (firstColorSegmentedControl.selectedSegmentIndex, secondColorSegmentedControl.selectedSegmentIndex) {
            
        case (0,1), (1,0):
            PaintBucket.backgroundColor = mixColors("Red", second: "Yellow")
        
        case (0,0):
            PaintBucket.backgroundColor = mixColors("Red", second: "Red")
            
            
        case (0,2), (2,0):
            PaintBucket.backgroundColor = mixColors("Red", second: "Blue")
            
        case (1,1):
            PaintBucket.backgroundColor = mixColors("Yellow", second: "Yellow")
        
            
        case (1,2), (2,1):
            PaintBucket.backgroundColor = mixColors("Yellow", second: "Blue")
            
        case (2,2):
            PaintBucket.backgroundColor = mixColors("Blue", second: "Blue")
            
        default:
            
            PaintBucket.backgroundColor = UIColor.whiteColor()
        }
        
        
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

