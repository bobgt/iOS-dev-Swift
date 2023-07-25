//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // A constant variable is declared and an array of 5 images are assigned to the const variable "ballArray". 
    // The const is to easily reference the items in the array using index positioning. 
    let ballArray = [#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    

    // An IB Outlet connection is made from the Main storyboard file. The selected UI component is the UIImageview Object. 
    // This heps in changing attributes and properties of the Image programmatically. 
    // It also helps to reference the UI Image from within functions in the code. 
    @IBOutlet weak var imageView: UIImageView!
    
    
    // an IB outlet is initiated for an "Action" connection. Here, we have created an action function called askButtonPressed and linked it to the ASK UI Button component in the Main.storyboard file.  
    @IBAction func askButtonPressed(_ sender: Any) {
        

        // We are using the Dot notation here. It accesses the imageView defined in the IB Outlet connection to access the ImageView object. 
        // We want to change the UI Image randomly whenever the ASK button is pressed. 
        // To change the UI Image randomly, we are using the Int.random method and have specified a range
        // The range is from 0...4 which means the method will randomly pick an image from the ballArray const as it has an array of all 5 images. 
        imageView.image = ballArray[Int.random(in: 0...4)]
        
    }
    
}

