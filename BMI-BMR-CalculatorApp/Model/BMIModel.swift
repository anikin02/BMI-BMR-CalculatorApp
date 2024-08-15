//
//  BMIModel.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 15.08.2024.
//

import Foundation

struct BMIModel {
  var height: Double
  var weight: Double
  
  func getBMI() -> Double {
    let result: Double = weight / (height * height) * 10000
    return result
  }
  
  func getBMIInfo(BMI: Double) -> (status: String, description: String) {
    switch BMI {
    case ..<18.5 :
      return ("Underweight", "You are under the normal body weight. It may be a good idea to gain some weight.")
    case 18.5..<25 :
      return ("Normal", "You have a normal body weight. Good job!")
    case 25..<30 :
      return ("Overweight", "You are slightly above the normal body weight. Consider a balanced diet and exercise.")
    case 30... :
      return ("Obese", "You are above the normal body weight. It's important to take action to reduce your weight.")
    default:
      return ("Error", "Error")
    }
  }
}
