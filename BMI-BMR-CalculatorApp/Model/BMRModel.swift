//
//  BMRModel.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 15.08.2024.
//

import Foundation

struct BMRModel {
  var height: Double
  var weight: Double
  var gender: Gender
  var age: Double
  
  func getBMR() -> Int {
    switch gender {
    case .male :
      return Int(10 * weight + 6.25 * height - 5 * age + 5)
    case .female:
      return Int(10 * weight + 6.25 * height - 5 * age - 161)
    }
  }
}