//
//  HelpView.swift
//
//
//  Created by Ana Elisa Lima on 21/02/24.
//

import SwiftUI

struct allCases: Identifiable {
    let id = UUID()
    let moods: String
    let texts: String
}

struct HelpView: View {
    @Binding var showHelp: Bool
    
    @State private var explanationCases = [
        allCases(moods:"RedEllipse", texts: "For a progress between 0% and 20%"),
        allCases(moods:"OrangeEllipse", texts: "For a progress between 20% and 40%"),
        allCases(moods:"YellowEllipse", texts: "For a progress between 40% and 60%"),
        allCases(moods:"MintEllipse", texts: "For a progress between 60% and 80%"),
        allCases(moods:"GreenEllipse", texts: "For a progress between 60% and 100%")
    ]
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .center) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Mission: Instructions")
                        .font(.custom("Silom", size: 20))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("You are going to find a carousel of 10 cards. Each card has a description that you can access by clicking on \(Image(systemName: "exclamationmark.circle")). If you want to read the biography, click on the card. Once you have read it all, click on the button 'Done' to return and access the other biographies as well. Every time you read one biography, Alice will change her mood. You can watch her progress as well as your reading progress by watching the bar located at the top right corner. Here is a guide to Alice's mood:")
                        .font(.custom("Single Day", size: 19))
                        .multilineTextAlignment(.center)
                        .padding([.trailing, .leading])
                    
                    List {
                        ForEach(explanationCases) { explanation in
                            HStack {
                                Image(explanation.moods)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                                Text(explanation.texts)
                                    .font(.custom("Single Day", size: 19))
                            }
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showHelp = false
                    } label: {
                        Text("OK")
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    HelpView(showHelp: .constant(true))
}
