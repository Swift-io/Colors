//
//  ColorRow.swift
//  Colors
//
//  Created by Emad Abdulrahim on 8/22/20.
//  Copyright © 2020 Emad Abdulrahim. All rights reserved.
//

import SwiftUI

struct Pigment: View {
  var color: Color
  
  var body: some View {
    RoundedRectangle(cornerRadius: 6)
      .size(CGSize(width: 24, height: 24))
      .foregroundColor(color)
      .shadow(radius: 1)
      .frame(width: 24, height: 24)
  }
}

struct ColorRow: View {
  var color: Color
  var name: String
  
  var body: some View {
    HStack {
      Pigment(color: color)
      Text(name).font(.headline).padding(.leading, 4)
    }
  }
}

struct ColorRow_Previews: PreviewProvider {
  static var previews: some View {
    ColorRow(color: Color.red, name: "Red")
  }
}
