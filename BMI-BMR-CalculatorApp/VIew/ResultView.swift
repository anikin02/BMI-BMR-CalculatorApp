//
//  ResultView.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 15.08.2024.
//

import SwiftUI

struct ResultView: View {  
  @EnvironmentObject var calculatorViewModel: CalculatorViewModel
  
    var body: some View {
      VStack() {
        // Title
        Text("Your Result")
          .foregroundStyle(.white)
          .font(.system(size: 40, weight: .bold))
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(25)
        
        // Plate of result
        VStack {
          // BMI
          Text("Body Mass Index")
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .black))
            .padding(.bottom, 10)
          let infoBMI = calculatorViewModel.bmiModel.getBMIInfo(BMI: Float(calculatorViewModel.bmiModel.getStringBMI()) ?? 0)
          Text(infoBMI.status)
            .foregroundStyle(getBMIStatusColor(status: infoBMI.status))
            .font(.system(size: 20, weight: .bold))
          Text(calculatorViewModel.bmiModel.getStringBMI())
            .foregroundStyle(.white)
            .font(.system(size: 64, weight: .bold))
          Text(infoBMI.description)
            .foregroundStyle(.gray)
            .font(.system(size: 16, weight: .medium))
            .multilineTextAlignment(.center)
          
          Divider()
            .background(.gray)
          
          // BMR
          Text("Basal Metabolic Rate")
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .black))
            .padding(.top, 10)
            .padding(.bottom, 1)
          Text("\(calculatorViewModel.bmrModel.getBMR())")
            .foregroundStyle(.white)
            .font(.system(size: 64, weight: .bold))
          Text("Calories/day")
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .bold))
        }
        .padding(25)
        .background(Color("PLATECOLOR"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(25)
        .padding(.bottom, 100)
        
        Button {
          calculatorViewModel.isShowResultView.toggle()
        } label: {
          Text("Re-Calculate")
            .font(.system(size: 32, weight: .black))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.top, 25)
            .background(Color("MAIN"))

        }
      }
    }
  
  func getBMIStatusColor(status: String) -> Color {
    switch status {
    case "Underweight" :
      return .orange
    case "Normal" :
      return .green
    case "Overweight" :
      return .orange
    case "Obese" :
      return .red
    default:
      return .red
    }
  }

}

#Preview {
    ResultView()
}
