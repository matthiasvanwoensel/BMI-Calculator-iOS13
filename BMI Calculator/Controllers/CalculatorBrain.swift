//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matthias Van Woensel on 24/06/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    var bmiValue: Float = 0.0
    
    func getBMIValue()-> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmiValue = weight / (height * height)
    }
    
    
}
