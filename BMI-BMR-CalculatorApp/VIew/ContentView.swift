//
//  ContentView.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 14.08.2024.
//

import SwiftUI

struct ContentView: View {
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
        CalculatorView()
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color("BGCOLOR"))
    }
}

#Preview {
    ContentView()
}
