//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matthias Van Woensel on 24/06/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue()-> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: color)
        }
        else if bmiValue < 24.9 {
            let color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color)
        }else if bmiValue < 40 {
            let color = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color)
        }else{
            let color = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Stop eating now!", color: color)
            
        }
    
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
}
