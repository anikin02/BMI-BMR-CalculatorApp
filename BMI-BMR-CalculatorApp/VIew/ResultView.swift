//
//  ResultView.swift
//  BMI-BMR-CalculatorApp
//
//  Created by Данил Аникин on 15.08.2024.
//

import SwiftUI

struct ResultView: View {
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
          Text("Normal")
            .foregroundStyle(.green)
            .font(.system(size: 20, weight: .bold))
          Text("19.2")
            .foregroundStyle(.white)
            .font(.system(size: 64, weight: .bold))
          Text("You Have a Normal Body Weight, Good Job.")
            .foregroundStyle(.gray)
            .font(.system(size: 16, weight: .medium))
            .multilineTextAlignment(.center)
            .padding(.bottom, 10)
          
          Divider()
            .background(.gray)
          
          // BMR
          Text("Basal Metabolic Rate")
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .black))
            .padding(.top, 10)
            .padding(.bottom, 1)
          Text("1605")
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

}

#Preview {
    ResultView()
}
