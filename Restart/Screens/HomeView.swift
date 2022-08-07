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
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - Header
            Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeOut(duration: 4)
                            .repeatForever(),
                        value: isAnimating
                    )
            }
            
            // MARK: - Center
            Text("The time that leads to mastery is dependent on the intensity of focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            Spacer()
            
            
            Button {
                withAnimation {
                    isOnboardingViewActive = true
                }
            } label: {
                // No need to use a horizontal stack
                // inside button label
                // swiftUI automatically renders horizontal stack
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        } //: VStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isAnimating = true
            }
        }
    }
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
