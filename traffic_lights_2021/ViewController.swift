//
//  ViewController.swift
//  traffic_lights_2021
//
//  Created by Vladimir Syleimanov on 04.01.2021.
//

import UIKit

enum AllTheLichts {
    case red, yellow, green
    
}

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = AllTheLichts.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
//        redLight.layer.cornerRadius = redLight.frame.size.width / 2
//        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
//        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
//
        startButton.layer.cornerRadius = 15
        redLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
     

    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        redLight.layer.cornerRadius = redLight.frame.size.width / 2
//        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
//        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
//
//        startButton.layer.cornerRadius = 15
//
//        redLight.alpha = 0.3
//        yellowLight.alpha = 0.3
//        greenLight.alpha = 0.3
//
//    }

//    @IBAction func startButtonPressed() {
//        if startButton.isEnabled {
//            redLight.alpha = 1
//            startButton.setTitle("Next", for: .normal)
//        } else if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        }  else if greenLight.alpha == 1 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1
//        }
//    
    
//        if startButton.titleLabel?.text == "START" {
//            redLight.alpha = 1
//            startButton.setTitle("NEXT", for: .normal)
//        } else if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        }  else if greenLight.alpha == 1 {
//            greenLight.alpha = 0.3
//            redLight.alpha = 1
//        }

 
    @IBAction func buttonPressed() {
        startButton.setTitle("Next", for: .normal)
       
        
        switch currentLight  {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
        
    }
}

