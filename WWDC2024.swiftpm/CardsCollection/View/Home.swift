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
    @State var showHelp: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundColor")
                
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
                    .shadow(radius: 3)
                    
                    NavigationLink (destination: FinalView().navigationBarBackButtonHidden(true)) {
                        Text("Finish")
                            .frame(height: UIScreen.main.bounds.height / 25)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
                //                .navigationTitle("Nome")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showHelp = true
                        } label: {
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .sheet(isPresented: $showHelp) {
                            HelpView(showHelp: $showHelp)
                        }
                        
                        .onAppear {
                            posts = CardData.generateCards()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Home()
}
