//
//  PresentationView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

// MARK: - PresentationView
/* Creates the whole onboarding experience */

struct PresentationView: View {
    @State private var currentTab = 0
    @State private var completeOnboarding = false
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @EnvironmentObject private var currentReading: ProgressReading
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 24) {
                TabView (selection: $currentTab) {
                    ForEach (OnboardingData.list) {viewData in
                        PresentationOnboardingView(data: viewData)
                            .tag(viewData.id)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                .onChange(of: currentTab) { newTab in
                    if newTab == 5 {
                        completeOnboarding = true
                    }
                }
                
                NavigationLink(destination: Carousel().navigationBarBackButtonHidden(true)) {
                    Text("Let's start!")
                        .font(.custom("Single Day", size: 21))
                        .frame(height: UIScreen.main.bounds.height/25)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .disabled(!completeOnboarding)
                
            }
            .padding(16)
        }
    }
}
