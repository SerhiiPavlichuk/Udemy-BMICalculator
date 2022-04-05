//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by admin on 04.04.2022.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }

    }

    func getBMIValue() -> String {
        let bmi1Decigmal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1Decigmal
    }

    func getBMIAdvice() -> String {
        return bmi?.advice ?? ""
    }

    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
