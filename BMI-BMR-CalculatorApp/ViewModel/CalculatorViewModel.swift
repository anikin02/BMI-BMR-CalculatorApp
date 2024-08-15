//
//  CalculatorViewModel.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 15.08.2024.
//

import Foundation

class CalculatorViewModel: ObservableObject {
  @Published var isShowResultView: Bool = false
  @Published var bmiModel: BMIModel = BMIModel(height: 150, weight: 60)
  @Published var bmrModel: BMRModel = BMRModel(height: 150, weight: 60, gender: .female, age: 18)
}
