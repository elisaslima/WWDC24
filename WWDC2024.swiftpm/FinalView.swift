//
//  FinalView.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 26/01/24.
//

import SwiftUI

struct FinalView: View {
    
    var body: some View {
        VStack {
            Text("Thank you for helping!")
                .font(.custom("Silom", size: 24))
                .multilineTextAlignment(.center)
                .padding()
            
                Text("Alice is feeling much better now and ready for a new adventure!\nWhen building up the path to our dreams, we tend to rely on some aspects. A dream is first built by an inspiration: family member, a friend, or a model to follow. Alice represents. By reading the trajectory of her models, the girl doesn’t expect to follow every step they have taken: she just wants to reminder herself that although the path is hard, there were people who once paved their own way, enjoyed their journey and achieved their goals. By reading their stories, she wants to remember that, at the end, every lesson learned will be worth. Whatever you feel unmotivated, take a break and remember the reason why you are following this path. Once you are done, look up for your model and keep going. Your dream is worth it.")
                    .font(.custom("Single Day", size: 19))
                    .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    FinalView()
}
