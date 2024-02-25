//
//  OnboardingData.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 16/01/24.
//

import SwiftUI

// MARK: - OnboardingData
/* Onboarding data model related to PresentationView */

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let onboardingImage: String
    let onboardingTitle: String
    let onboardingDescription: String
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 1,
                       onboardingImage: "onboardingImage1", 
                       onboardingTitle: "The First Step",
                       onboardingDescription: "Alice's biggest passion is science. Growing up, she loved to learn about how the world works. At the age of 15, she decided that she wanted to become a scientist. And at the age of 17, she decided to be an astronaut."),
        
        OnboardingData(id: 2,
                       onboardingImage: "onboardingImage2", 
                       onboardingTitle: "Life Strikes",
                       onboardingDescription: "However, as happens to everybody, Alice would sometimes doubt her capacities and ask herself if she was on the right path."),
        
        OnboardingData(id: 3,
                       onboardingImage: "onboardingImage3", 
                       onboardingTitle: "Looking for a Solution",
                       onboardingDescription: "Every time this happens, she looks for a solution: getting inspired by pioneer female astronauts. She could read a million of times the biographies of the ones who came before her but would never feel tired or bored."),
        
        OnboardingData(id: 4,
                       onboardingImage: "onboardingImage4", 
                       onboardingTitle: "The Call",
                       onboardingDescription: "Alice is feeling unmotivated today. She needs a story to inspire her and someone to help her. Can you be the one?"),
        
        OnboardingData(id: 5,
                       onboardingImage: "onboardingImage5", 
                       onboardingTitle: "The Mission",
                       onboardingDescription: "You will find the instruction on the next page. Now that you have accepted the mission, let's start!")
    ]
}


