//
//  AboutMeView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 26/01/24.
//

import SwiftUI

// MARK: - AboutMeView
/* Creates the view responsible to show my information */

struct AboutMeView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            Button {
                dismiss()
            } label: {
                Text("< Back")
                    .font(.custom("Single Day", size: 21))
                    .foregroundStyle(Color("AccentColor"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            .offset(y: 0)
        
        Divider()
        
        VStack {
            Text("Hello, my name is Ana Elisa!")
                .font(.custom("Silom", size: 21))
                .offset(x: -25)
            
            Text("I'm a Chemistry student in Brazil. Since I was a child, I have been dreaming about the Cosmos and knew from a very young age that my path was inside science. My biggest dream is to become a scientist and make positive changes in the world! \n\nMy friends consider me as a human encyclopedia when it comes to space and astronaut data. I love to search about astronaut's biographies and memorize their educational background. By reading their stories, I get inspiration to keep working hard towards my dreams. \n\nDeveloping this app was challenging but brought me a great knowledge and memories! For the future, I hope to keep getting better in programming and learning more about the universe of computer science. I hope that you get inspired as well and never gave up of your dreams!")
                .font(.custom("Single Day", size: 18))
                .padding()
            
            VStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 420, height: 300)
                    .overlay (
                        Image("AboutMePhoto")
                            .resizable()
                            .frame(width: 350, height: 250)
                            .scaledToFit()
                            .shadow(radius: 5))
            }
            .offset(y: -20)
        }
        .navigationBarBackButtonHidden(true)
        .offset(y: 10)
    }
}

#Preview {
    AboutMeView()
}
