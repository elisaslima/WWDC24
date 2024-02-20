//
//  PresentationOnboardingView.swift
//
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

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
                    .multilineTextAlignment(.center)
                
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
