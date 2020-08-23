//
//  Color.swift
//  Colors
//
//  Created by Emad Abdulrahim on 8/22/20.
//  Copyright © 2020 Emad Abdulrahim. All rights reserved.
//

import Foundation
import SwiftUI


struct ColorToken: Identifiable {
  let id = UUID()
  var name: String
  var value: Color
  
  static let DefaultList = [
    ColorToken(name: "Black", value: Color.black),
    ColorToken(name: "Red", value: Color.red),
    ColorToken(name: "Orange", value: Color.orange),
    ColorToken(name: "Yellow", value: Color.yellow),
    ColorToken(name: "Green", value: Color.green),
    ColorToken(name: "Blue", value: Color.blue),
    ColorToken(name: "Purple", value: Color.purple),
    ColorToken(name: "White", value: Color.white),
  ]
}

