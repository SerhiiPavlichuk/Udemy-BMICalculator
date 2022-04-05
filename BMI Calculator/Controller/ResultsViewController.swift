//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by admin on 04.04.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroungImageView: UIImageView!
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        backgroungImageView.backgroundColor = bmiColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
