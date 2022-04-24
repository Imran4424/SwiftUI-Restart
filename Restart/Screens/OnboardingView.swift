//
//  OnboardingView.swift
//  Restart
//
//  Created by Shah Md Imran Hossain on 24/4/22.
//

import SwiftUI

struct OnboardingView: View {
        // MARK: - Property
        @AppStorage("onboarding") var isOnboardingViewActive = true
        
        var body: some View {
                // VSTack
                VStack(spacing: 20) {
                        Text("Onboarding")
                                .font(.largeTitle)
                        
                        Button {
                                isOnboardingViewActive = false
                        } label: {
                                Text("Start")
                        }
                        
                } //: VStack
        }
}

struct OnboardingView_Previews: PreviewProvider {
        static var previews: some View {
                OnboardingView()
        }
}
