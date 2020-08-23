//
//  ColorsViewModel.swift
//  Colors
//
//  Created by Emad Abdulrahim on 8/22/20.
//  Copyright © 2020 Emad Abdulrahim. All rights reserved.
//

import Foundation
import SwiftUI

class ColorsViewModel: ObservableObject {
  @Published var palette: [ColorToken] = ColorToken.DefaultList
  
  func addColor(red: String, green: String,  blue: String, name: String) {
    
//    palette.append(ColorToken(name: name, value: Color(red: Double(red)! / 255, green: Double(green)! / 255, blue: Double(blue)! / 255)))
    
    palette.insert(ColorToken(name: name, value: Color(red: Double(red)! / 255, green: Double(green)! / 255, blue: Double(blue)! / 255)), at: 0)
  }
}
