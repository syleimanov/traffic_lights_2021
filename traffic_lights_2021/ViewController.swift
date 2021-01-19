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
        
        startButton.layer.cornerRadius = 15
        redLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
     
    }

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

