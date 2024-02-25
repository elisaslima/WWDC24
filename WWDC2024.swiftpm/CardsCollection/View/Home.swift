//
//  Home.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 24/01/24.
//

import SwiftUI

// MARK: - Home
/* Creates the view responsible to show the carousel of cards and their respective functions */

struct Home: View {
    @EnvironmentObject private var currentReading: ProgressReading
    @State var currentIndex: Int = 0
    @State var posts: [CardData] = []
    @State var selectedIndex: Int? = nil
    @State var showHelp: Bool = false
    let call: Call
    let hasShownHelpKey = "hasShownHelp"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                BarView()
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
                .shadow(radius: 3)
                
                NavigationLink(destination: FinalView(call: Call(id: Container.elements[0].id,
                                                                 navigationTitle: Container.elements[0].navigationTitle,
                                                                 scientistImage: Container.elements[0].scientistImage,
                                                                 education: Container.elements[0].education,
                                                                 biography: Container.elements[0].biography,
                                                                 endingImage: Container.elements[0].endingImage,
                                                                 subtitle: Container.elements[0].subtitle,
                                                                 isRead: false))
                    .navigationBarBackButtonHidden(true)) {
                        Text("Finish")
                            .font(.custom("Single Day", size: 21))
                            .frame(height: UIScreen.main.bounds.height / 25)
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    .disabled(currentReading.biographiesRead == 0)
            }
            .preferredColorScheme(.light)
            .frame(maxHeight: .infinity, alignment: .top)
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
                        let hasShownHelp = UserDefaults.standard.bool(forKey: hasShownHelpKey)
                        if !hasShownHelp {
                            showHelp = true
                            UserDefaults.standard.set(true, forKey: hasShownHelpKey)
                        }
                        
                        posts = CardData.generateCards()
                    }
                }
            }
        }
    }
}

#Preview {
    Home(call: Call(id: Container.elements[0].id,
                    navigationTitle: Container.elements[0].navigationTitle,
                    scientistImage: Container.elements[0].scientistImage,
                    education: Container.elements[0].education,
                    biography: Container.elements[0].biography,
                    endingImage: Container.elements[0].endingImage,
                    subtitle: Container.elements[0].subtitle,
                    isRead: false))
}
