//
//  ShadowView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 17/01/24.
//

import SwiftUI

// MARK: - ShadowView
/* Creates the view responsible to show each astronaut's card descriptions */

struct ShadowView: View {
    var cardDescription: String
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.90)
                .cornerRadius(12)
            
            VStack {
                Text(cardDescription)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.vertical, 80)
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}
