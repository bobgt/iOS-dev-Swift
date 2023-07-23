//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

/// IB Outlet is used to reference the UI objects/components in the Main file or the Interface Builder (IB). It is where you change the properties of the imageview programmatically when the viewDidLoad function is called upon App launch.
    
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
/// test comments
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
/** To change the properties of the UI Object in the Main.Storyboard file, use the who.what = value equation. It is also called the dot notation where: who = which particular variable or UI component object needs to be changed.
 what = what is the type of the UI compnent that needs to be changed. Example, whether it's an image UI component or a string UI component or a label.This is also accessing the property of the view/UI object such as "image" or "alpha".
 value = Assigning a new value to the UI component when the viewDidLoad function is called or executed by the app.
 Note that the image literal that was available in Xcode 13 does not work on Xcode 14. In Xcode 14, use the UIImage(named: string) method to access and change the property/attribute of the specified UIImage element/object.
 
 EDIT: The most current way to use image literals is #imageLiteral( for graphical representation of your images uploaded in Xcode project.
 */
        
//        diceImageView1.image = UIImage(named: "DiceSix")
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        
        // This is using the dot notation who.what = value. This notation changes the UI image element to a new UI image when the app is run. In this case, the the current image changes to DiceSix.
        
//        diceImageView1.alpha = 0.5
        // In this line, we are changing the alpha property of the UI image element to 0.5. Alpha property dictates the opacity and transparecy of the UI image elements.
        
        diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
    

        
/// @IBAction is used to respond to user actions such as tapping gesture on a button UI element in the Interface Builder.
/// @IBAction connection defines a function in which the code to respond to user interaction is executed.
/// @IBAction moves from LEFT to RIGHT, i.e., from the UI Element to the referenced function in the ViewController.swift file.
//        print("Button got tapped")
        
//        diceImageView1.image = UIImage(named: "DiceFour")
//        diceImageView2.image = UIImage(named: "DiceFour")
        
    
        
    }
    
    
    
    @IBAction func roleButtonPressed(_ sender: UIButton) {
        
        
        // Using this method to generate a random number from the specified range. In this case, the number is an Interger and the range is from 0-5. The range is picked from the given array of images.
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
//        leftDiceNumber = leftDiceNumber + 1
        
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][Int.random(in: 0...5)]
//        rightDiceNumber = rightDiceNumber - 1

        
        
        
        
    }
    
    
}

