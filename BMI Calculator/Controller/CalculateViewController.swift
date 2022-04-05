//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by admin on 03.04.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"

    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"

    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVc = segue.destination as! ResultsViewController
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
            destinationVc.bmiAdvice = calculatorBrain.getBMIAdvice()
            destinationVc.bmiColor = calculatorBrain.getBMIColor()
        }
    }
}

