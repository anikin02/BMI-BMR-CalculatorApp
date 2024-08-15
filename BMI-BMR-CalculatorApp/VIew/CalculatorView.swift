//
//  CalculatorView.swift
//  BMI-BMR-CalculatorApp
//
//  Created by anikin02 on 14.08.2024.
//

import SwiftUI

struct CalculatorView: View {
  @State var gender: Gender = .female
  @State var height: Double = 150
  @State var age = 18
  @State var weight = 50
  
    var body: some View {
      VStack(spacing: 25) {
        HStack {
          // MARK: Fe/male
          Button {
            gender = .male
          } label: {
            VStack {
              Image("male")
                .resizable()
                .frame(width: 96, height: 96)
              Text("Male")
                .foregroundStyle(.gray)
                .font(.system(size: 20))
            }
          }
          .padding(24)
          .background(Color("PLATECOLOR"))
          .clipShape(RoundedRectangle(cornerRadius: 12))
          Spacer()
          Button {
            gender = .female
          } label: {
            VStack {
              Image("female")
                .resizable()
                .frame(width: 96, height: 96)
              Text("Female")
                .foregroundStyle(.gray)
                .font(.system(size: 20))
            }
          }
          .padding(24)
          .background(Color("PLATECOLOR"))
          .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(.horizontal, 25)
        .padding(.top, 25)
        
        
        // MARK: Height
        VStack {
          Text("Height")
            .foregroundStyle(.gray)
            .font(.system(size: 20))
          HStack(alignment: .bottom, spacing: 0) {
            Text(String(Int(height)))
              .foregroundStyle(.white)
              .font(.system(size: 40, weight: .bold))
            Text("cm")
              .foregroundStyle(.white)
              .font(.system(size: 20, weight: .medium))
              .padding(.bottom, 5)
          }
          Slider(value: $height, in: 1...300, step: 1)
          .accentColor(Color("MAIN"))
        }
        .padding(24)
        .frame(maxWidth: .infinity)
        .background(Color("PLATECOLOR"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal, 25)
        
        // MARK: Weight and Age
        HStack {
          VStack {
            Text("Weight")
              .foregroundStyle(.gray)
            Text(String(weight))
              .font(.system(size: 60, weight: .bold))
              .foregroundStyle(.white)
              .padding(.bottom, 10)
            HStack (spacing: 40) {
              Button {
                weight -= 1
              } label: {
                Image(systemName: "minus")
                  .resizable()
                  .frame(width: 15, height: 3)
                  .padding(16)
                  .foregroundStyle(.white)
                  .background(Color("GRAY"))
                  .clipShape(Circle())
              }
              Button {
                weight += 1
              } label: {
                Image(systemName: "plus")
                  .resizable()
                  .frame(width: 15, height: 15)
                  .padding(10)
                  .foregroundStyle(.white)
                  .background(Color("GRAY"))
                  .clipShape(Circle())
              }
            }
          }
          .padding(24)
          .background(Color("PLATECOLOR"))
          .clipShape(RoundedRectangle(cornerRadius: 12))
          
          Spacer()
          
          VStack {
            Text("Age")
              .foregroundStyle(.gray)
            Text(String(age))
              .font(.system(size: 60, weight: .bold))
              .foregroundStyle(.white)
              .padding(.bottom, 10)
            HStack (spacing: 40) {
              Button {
                age -= 1
              } label: {
                Image(systemName: "minus")
                  .resizable()
                  .frame(width: 15, height: 3)
                  .padding(16)
                  .foregroundStyle(.white)
                  .background(Color("GRAY"))
                  .clipShape(Circle())
              }
              Button {
                age += 1
              } label: {
                Image(systemName: "plus")
                  .resizable()
                  .frame(width: 15, height: 15)
                  .padding(10)
                  .foregroundStyle(.white)
                  .background(Color("GRAY"))
                  .clipShape(Circle())
              }
            }
          }
          .padding(24)
          .background(Color("PLATECOLOR"))
          .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(.horizontal, 25)
        .padding(.bottom, 25)
        
        Button {
          
        } label: {
          Text("Calculate")
            .font(.system(size: 32, weight: .black))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.top, 25)
            .background(Color("MAIN"))

        }
      }
    }
}

enum Gender {
  case male
  case female
}

#Preview {
    CalculatorView()
}
