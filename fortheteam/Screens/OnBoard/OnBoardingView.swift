//
//  OnBoardingView.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    
    var onboards: [OnBoard] = onboardData

    // MARK: - BODY
    
    var body: some View {
      TabView {
        ForEach(onboards[0...2]) { item in
          OnBoardCardView(onboard: item)
        } //: LOOP
      } //: TAB
      .tabViewStyle(PageTabViewStyle())
      .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
      .foregroundColor(.black)
      .padding(.vertical, 20)
    }

}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
