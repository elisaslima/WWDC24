//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

struct PresentationView: View {
    @State private var currentTab = 0
    @State private var completeOnboarding = false
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
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
                if newTab == 4 {
                    completeOnboarding = true
                }
            }
            
            Button {
               isOnboarding = false
            } label: {
                Text("Let's start!")
                    .frame(height: UIScreen.main.bounds.height/25)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .disabled(!completeOnboarding)
            
        }
        .padding(16)
    }
}


