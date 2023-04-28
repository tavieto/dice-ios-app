//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    private let imagesID = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = getRandomUIImage()
        diceImageViewTwo.image = getRandomUIImage()
    }
    
    private func getRandomUIImage() -> UIImage {
        return UIImage(imageLiteralResourceName: imagesID.randomElement()!)
    }
}

