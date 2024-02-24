//
//  PresentationOnboardingView.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

// MARK: - PresentationOnboardingView
/* Creates the view that appears on each page of the onboarding */

struct PresentationOnboardingView: View {
    var data: OnboardingData
    
    var body: some View {
        VStack {
            Text(data.onboardingTitle)
                .font(.custom("Silom", size: 24))
                .multilineTextAlignment(.center)
                .padding()
            
            VStack(spacing: 16) {
                Text(data.onboardingDescription)
                    .font(.custom("Single Day", size: 19))
                // MARK: for accessibility purposes
                    .padding(.leading)
                
                Image(data.onboardingImage)
                    .resizable()
                    .ignoresSafeArea(.all)
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    PresentationOnboardingView(data: OnboardingData.list.first!)
}
