//
//  HelpView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 21/02/24.
//

import SwiftUI

// MARK: - HelpView
/* Creates the view responsible to show the instructions/help guide */

struct allCases: Identifiable {
    let id = UUID()
    let moods: String
    let texts: String
}

struct HelpView: View {
    @Binding var showHelp: Bool
    
    @State private var explanationCases = [
        allCases(moods:"mood1", texts: "For a progress between 0% and 20%"),
        allCases(moods:"mood2", texts: "For a progress between 20% and 40%"),
        allCases(moods:"mood3", texts: "For a progress between 40% and 60%"),
        allCases(moods:"mood4", texts: "For a progress between 60% and 80%"),
        allCases(moods:"mood5", texts: "For a progress between 80% and 100%")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    VStack {
                        Text("Mission: Instructions")
                            .font(.custom("Silom", size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Text("You are going to find a carousel of 10 cards. Each card has a description that you can access only by clicking on \(Image(systemName: "exclamationmark.circle")). If you want to read the biography, click on the card. Once you have read it all, click on the button 'Done' to return and access the other biographies as well. Every time you read one biography, Alice will change her mood. \nYou can watch her progress as well as your reading progress by watching the bar located at the top right corner. You can just click on 'Finish' once you have read at least one biography. Feel free to read as much biographies as you want. After clicking on 'Finish', the bar will be reset and you will start your journey again. \nHere is a guide to Alice's mood:")
                            .font(.custom("Single Day", size: 18))
                            .padding([.trailing, .leading])
                    }
                    
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
            .preferredColorScheme(.light)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showHelp = false
                } label: {
                    
                }
            }
        }
    }
}


#Preview {
    HelpView(showHelp: .constant(true))
}
