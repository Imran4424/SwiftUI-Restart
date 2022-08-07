//
//  ContentView.swift
//  Restart
//
//  Created by Shah Md Imran Hossain on 24/4/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    @AppStorage("onboarding") var isOnboardingViewActive = true
    
    var body: some View { 
        // Z stack
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
