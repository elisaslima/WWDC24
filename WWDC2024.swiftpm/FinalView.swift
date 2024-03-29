//
//  FinalView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 26/01/24.
//

import SwiftUI

// MARK: - FinalView
/* Final view that shows the last message before the storytelling ends */

struct FinalView: View {
    @EnvironmentObject private var currentReading: ProgressReading
    let call: Call
    
    var body: some View {
        NavigationStack {
            Spacer()
            
            ZStack {
                Image(.onboardingImage1)
                    .opacity(0.1)
                
                VStack {
                    Text("Thank you for helping!")
                        .font(.custom("Silom", size: 24))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Alice is feeling much better now and ready to keep going! \n\nWhen building up the path to our dreams, we tend to rely on some aspects. A dream is first built by an inspiration. It could be a family member, a friend, or a model to follow. Alice is not just a fictional character: she represents strong girls and women who daily fight for their dreams. \n\nBy reading the trajectory of her models, Alice doesn't expect to follow every step they have taken: she just wants to reminder herself that although the path is hard, there were people who once paved their own way, enjoyed their journey and achieved their goals. By reading their stories, she wants to remember that, at the end, every lesson learned will be worth. Like Alice, we can keep the same mindset.\n\nIt doesn't matter how many biographies you have read, you helped Alice and she hopes that you also got inspired. She will continue to find ways to continue. If you have a dream, always remember why you chose this path when things don't go the way you expect.\n\nYour dream is worth it.")
                        .font(.custom("Single Day", size: 19))
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: PresentationView().onAppear {
                      currentReading.biographiesRead = 0
                          for i in 0..<10 {
                            Container.elements[i].isRead = false
                        }
                    }
                        .navigationBarBackButtonHidden(true)) {
                            Text("Start Again")
                                .font(.custom("Single Day", size: 20))
                                .frame(height: UIScreen.main.bounds.height / 25)
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .padding([.leading, .trailing])
                    
                    NavigationLink {
                        AboutMeView()
                    } label: {
                        Text("About Me")
                            .font(.custom("Single Day", size: 20))
                    }
                    .padding()
                }
                .preferredColorScheme(.light)
            }
        }
    }
}
                
                
#Preview {
    FinalView(call: Call(id: Container.elements[0].id,
                         navigationTitle: Container.elements[0].navigationTitle,
                         scientistImage: Container.elements[0].scientistImage,
                         education: Container.elements[0].education,
                         biography: Container.elements[0].biography,
                         endingImage: Container.elements[0].endingImage,
                         subtitle: Container.elements[0].subtitle,
                         isRead: false))
}
