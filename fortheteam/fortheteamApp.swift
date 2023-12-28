//
//  fortheteamApp.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import SwiftUI

@main
struct fortheteamApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                LoginScreen()
            }
        }
    }
}
