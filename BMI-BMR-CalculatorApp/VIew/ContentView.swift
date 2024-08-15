//
//  ContentView.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 14.08.2024.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var calculatorViewModel = CalculatorViewModel()
  
    var body: some View {
      VStack {
        HStack {
          Text("BMI/BMR Calculator")
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .black))
            .frame(maxWidth: .infinity)
            .padding(.bottom, 10)
            .background(Color("UPBGCOLOR"))
        }
        Spacer()
        
        if calculatorViewModel.isShowResultView {
          ResultView()
            .environmentObject(calculatorViewModel)
        } else {
          CalculatorView()
            .environmentObject(calculatorViewModel)
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color("BGCOLOR"))
    }
}

#Preview {
    ContentView()
}
