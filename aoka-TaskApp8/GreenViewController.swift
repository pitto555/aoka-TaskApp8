//
//  GreenViewController.swift
//  aoka-TaskApp8
//
//  Created by aoka on 2021/04/04.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var calcLabel: UILabel!
    
    @IBOutlet private weak var slider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            
            let sliderValue = delegate.count
            
            calcLabel.text = String(format: "%.6f", sliderValue)
            slider.value = sliderValue
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            
            let sliderValue = slider.value
            
            calcLabel.text = String(format: "%6f", sliderValue)
            delegate.count = sliderValue
        }
    }
}
