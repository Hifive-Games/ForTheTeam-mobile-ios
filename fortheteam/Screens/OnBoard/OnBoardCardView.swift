//
//  OnBoardCardView.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import SwiftUI

struct OnBoardCardView: View {
    
    var onboard: OnBoard
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
      ZStack {
        VStack(spacing: 20) {
          Image(onboard.image)
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimating ? 1.0 : 0.6)
          
          Text(onboard.title)
                .foregroundColor(Color.colorHeader)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
          
          Text(onboard.headline)
                .foregroundColor(Color.colorDescription)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
          
          StartButtonView()
        } //: VSTACK
      } //: ZSTACK
      .onAppear {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
      .background(LinearGradient(gradient: Gradient(colors: onboard.gradientColors), startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
      .padding(.horizontal, 20)
    }
}

struct OnBoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardCardView(onboard: onboardData[0])
    }
}
