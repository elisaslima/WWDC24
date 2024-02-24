//
//  CardView.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 17/01/24.
//

import SwiftUI

// MARK: - CardView
/* Creates the view responsible to show each astronaut's card informations */

struct CardView: View {
    var post: CardData
    var size: CGSize
    @State var overlayText: String = ""
    @Binding var selectedCard: Int?
    
    var body: some View {
        VStack {
            ZStack {
                NavigationLink {
                    BiographyView(call: Container.elements[post.index - 1])
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Image(post.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        .cornerRadius(12)
                }
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "exclamationmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 30)
                        .foregroundColor(Color.black)
                        .offset(y: -180)
                        .onTapGesture {
                            overlayText = post.cardInformation
                            selectedCard = post.index
                        }
                }
                .padding(0)
            }
        }
        .overlay(
            Group {
                ShadowView(cardDescription: overlayText)
                    .onTapGesture {
                        selectedCard = nil
                    }
            }
            .opacity(selectedCard == post.index ? 1 : 0)
        )
    }
}
