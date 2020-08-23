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
  
  func addColor(color: Color, name: String) {
    palette.insert(ColorToken(name: name, value: color), at: 0)
  }
}
