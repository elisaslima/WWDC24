//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

struct PresentationOnboardingView: View {
    var data: OnboardingData
    
    var body: some View {
        ZStack {
            Color.teal.opacity(0.3)
               .ignoresSafeArea()
            
            VStack (spacing: 16) {
                Text(data.onboardingDescription)
                    .font(.body)
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
