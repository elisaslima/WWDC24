//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let onboardingImage: String
    let onboardingDescription: String
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 1,
                       onboardingImage: "onboardingImage1",
                       onboardingDescription: "Alice's biggest passion is science. Since she was a child, she would look up at the sky and wonder what existed on her world and beyond. Growing up, she set on her mind the dream of becoming a scientist and so worked on her way towards her goals."),
        
        OnboardingData(id: 2,
                       onboardingImage: "onboardingImage2",
                       onboardingDescription: "However, at times, as happens to everybody, Alice would feel a lack of motivation, sometimes produced by a bad day, a bad grade or the absence of incentive from people around her and especially herself."),
        
        OnboardingData(id: 3,
                       onboardingImage: "onboardingImage3",
                       onboardingDescription: "Every time this happened, she looked for a safe harbor coming from her biggest inspirations. The solution was simple: reading the stories of the ones who came before her and, then, reminding herself to keep going."),
        
        OnboardingData(id: 4,
                       onboardingImage: "onboardingImage4",
                       onboardingDescription: " Today Alice is feeling a little unmotivated. She needs a story to inspires her. To complete this goal, please choose a biography and read it. Once you’re done, she will be well again."),
        
        OnboardingData(id: 5,
                       onboardingImage: "onboardingImage5",
                       onboardingDescription: "Welcome to Science Girl's Odyssey")
    ]
}


