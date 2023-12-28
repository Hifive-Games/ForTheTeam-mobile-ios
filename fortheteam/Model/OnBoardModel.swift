//
//  OnBoardModel.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import Foundation
import SwiftUI

struct OnBoard: Identifiable {
  var id = UUID()
  var title: LocalizedStringKey
  var headline: LocalizedStringKey
  var image: String
  var gradientColors: [Color]
}
