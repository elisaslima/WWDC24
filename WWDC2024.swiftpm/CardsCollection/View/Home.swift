//
//  SwiftUIView 2.swift
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
                Text("After reading all the stories, click on 'Finish' to see a special message.")
                    .padding()
                
                SnapCarousel(index: $currentIndex, items: posts) { post in
                        GeometryReader { proxy in
                            let size = proxy.size
                            
                            CardView(post: post,
                                     size: size,
                                     selectedCard: $selectedIndex)
                        }
                    }
                    .padding(.vertical)
                    
                    NavigationLink {
                        FinalView()
                    } label: {
                        Text("Finish")
                            .frame(height: UIScreen.main.bounds.height / 21)
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
