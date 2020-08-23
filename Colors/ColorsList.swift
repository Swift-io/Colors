//
//  ColorsList.swift
//  Colors
//
//  Created by Emad Abdulrahim on 8/22/20.
//  Copyright © 2020 Emad Abdulrahim. All rights reserved.
//

import SwiftUI

struct InputField: View {
  var name: String
  var placeholder: String
  @Binding var value: String
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(name).font(.subheadline)
      
      VStack {
        TextField(placeholder, text: $value).keyboardType(.numberPad)
      }
      .padding(8)
      .background(Color.white)
      .cornerRadius(6)
      .shadow(radius: 0.5)
    }
  }
}

struct NewColorInput: View {
  @State var red: String = ""
  @State var green: String = ""
  @State var blue: String = ""
  @State var name: String = ""
  @EnvironmentObject var colorViewModel: ColorsViewModel
  
  var newColor: Color {
    let redValue = Double(red) ?? 0
    let greenValue = Double(green) ?? 0
    let blueValue = Double(blue) ?? 0
    
    
    return Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255)
  }

  
  var body: some View {
    VStack(spacing: 16) {
      HStack(spacing: 16) {
        InputField(name: "Red", placeholder: "255", value: $red)
        InputField(name: "Green", placeholder: "255", value: $green)
        InputField(name: "Blue", placeholder: "255", value: $blue)
      }
      
      InputField(name: "Name", placeholder: "Color name", value: $name)
      
      Button(action: {self.colorViewModel.addColor(color: self.newColor, name: self.name)}) {
          HStack {
            Spacer()
            Text("Add").font(.headline).foregroundColor(.white).padding()
            Spacer()
          }
          .background(Color.black)
      }
      .cornerRadius(15)
    }
  }
}


struct ColorsList: View {
  @EnvironmentObject var colorsViewModel: ColorsViewModel
  
  func removeItem(at offset: IndexSet) {
    colorsViewModel.palette.remove(atOffsets: offset)
  }
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          ForEach(colorsViewModel.palette) { color in
            ColorRow(color: color.value, name: color.name)
          }
          .onDelete(perform: removeItem)
        }
        .navigationBarTitle("Palette")
        VStack {
          VStack() {
            NewColorInput()
          }
          .padding()
          .background(Color.white)
          .cornerRadius(10)
        }
        .padding(8)
      }
      .background(Color(red: 249 / 255, green: 245 / 255, blue: 241 / 255))
    }
  }
}

struct ColorsList_Previews: PreviewProvider {
  static var previews: some View {
    ColorsList()
  }
}
