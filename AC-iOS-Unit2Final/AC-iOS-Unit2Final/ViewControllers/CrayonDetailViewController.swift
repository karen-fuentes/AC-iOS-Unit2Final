//
//  CrayonDetailViewController.swift
//  AC-iOS-Unit2Final
//
//  Created by Karen Fuentes on 2/14/18.
//  Copyright © 2018 Karen Fuentes. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    var Crayon: Crayon!
    

    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    var redCGFloat: CGFloat = 0
    var blueCGFloat: CGFloat = 0
    var greenCGFloat: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        crayonNameLabel.text = Crayon.name
    }
    
    @IBAction func sliderDidSlide(_ sender: UISlider) {
        redCGFloat = CGFloat(redSlider.value)
        greenCGFloat = CGFloat(greenSlider.value)
        blueCGFloat = CGFloat(blueSlider.value)
        self.view.backgroundColor = UIColor(red: redCGFloat/255, green: greenCGFloat/255, blue: blueCGFloat/255, alpha: 1.0)
    }

    @IBAction func resetButtonWasPressed(_ sender: UIButton) {
       setBackground()
    }
    
    func setBackground() {
        redCGFloat = CGFloat(Crayon.red)
        blueCGFloat = CGFloat(Crayon.blue)
        greenCGFloat = CGFloat(Crayon.green)
        redSlider.value = Float(redCGFloat)
        blueSlider.value = Float(blueCGFloat)
        greenSlider.value = Float(greenCGFloat)
        self.view.backgroundColor = UIColor(red: redCGFloat/255, green: greenCGFloat/255, blue: blueCGFloat/255, alpha: 1.0)
    }
}
