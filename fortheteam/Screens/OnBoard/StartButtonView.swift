//
//  StartButtonView.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    
    var body: some View {
      Button(action: {
          isOnboarding = false
      }) {
        HStack(spacing: 8) {
            Text("OnBoard.StartButton")
                .foregroundColor(Color.colorHeader)
          
          Image(systemName: "arrow.right.circle")
            .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.colorSkipButton, lineWidth: 1.25)
        )
      } //: BUTTON
      .accentColor(Color.colorSkipButton)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
