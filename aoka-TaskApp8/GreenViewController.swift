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
    
    private var appDelegate: AppDelegate? {
        UIApplication.shared.delegate as? AppDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let delegate = appDelegate {
            updateCalcLabel(value: delegate.count)
            slider.value = delegate.count
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
       
        if let delegate = appDelegate {
            updateCalcLabel(value: slider.value)
            delegate.count = slider.value
        }
    }
    
    private func updateCalcLabel(value: Float) {
        calcLabel.text = String(format: "%.6f", value)
    }
}
