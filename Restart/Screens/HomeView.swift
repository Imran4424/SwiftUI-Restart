//
//  HomeView.swift
//  Restart
//
//  Created by Shah Md Imran Hossain on 24/4/22.
//

import SwiftUI

struct HomeView: View {
        // MARK: - Property
        @AppStorage("onboarding") var isOnboardingViewActive = true
        
        var body: some View {
                VStack(spacing: 20) {
                        Text("Home")
                                .font(.largeTitle)
                        
                        Button {
                                isOnboardingViewActive = true
                        } label: {
                                Text("Restart")
                        }
                        
                } //: VStack
        }
}

struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
                HomeView()
        }
}
