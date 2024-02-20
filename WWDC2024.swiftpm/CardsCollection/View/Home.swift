//
//  Home.swift
//  
//
//  Created by Ana Elisa Lima on 24/01/24.
//

import SwiftUI

struct Home: View {
    @State var currentIndex: Int = 0
    @State var posts: [CardData] = []
    @State var selectedIndex: Int? = nil
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                BarView()
                
                SnapCarousel(index: $currentIndex, items: posts) { post in
                        GeometryReader { proxy in
                            let size = proxy.size
                            
                            CardView(post: post,
                                     size: size,
                                     selectedCard: $selectedIndex)
                        }
                    }
                    .padding(.vertical)
                    
                NavigationLink (destination: FinalView().navigationBarBackButtonHidden(true)) {
                        Text("Finish")
                            .frame(height: UIScreen.main.bounds.height / 25)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .navigationTitle("Nome")
                .onAppear {
                    posts = CardData.generateCards()
                }
            }
        }
    }

#Preview {
    Home()
}
