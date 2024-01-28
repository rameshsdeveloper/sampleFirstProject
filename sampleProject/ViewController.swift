//
//  ViewController.swift
//  sampleProject
//
//  Created by user236599 on 1/11/24.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var step = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var counts: UILabel!

    @IBOutlet weak var stepView: UILabel!
    
    @IBAction func plus(_ sender: Any) {
        count = count + step
        counts.text = String(count)
    }
        
    @IBAction func minus(_ sender: Any) {
        count = count - step
        counts.text = String(count)
    }
    
    
    @IBAction func Toggle(_ sender: UISwitch) {
        let toggle = sender
        if toggle.isOn { step = 2}
        stepView.text = String(step)
    }
        
        
    @IBAction func Slide(_ sender: UISlider) {
        let sliderStep = sender
        step = Int(sliderStep.value)
        stepView.text = String(step)
        
    }
}

