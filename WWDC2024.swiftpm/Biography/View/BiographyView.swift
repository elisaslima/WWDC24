//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 19/01/24.
//

import SwiftUI
import Combine

struct BiographyView: View {
    @State private var completeReading = false
    let detector: CurrentValueSubject<CGFloat, Never>
    let publisher: AnyPublisher<CGFloat, Never>
    let call: Call
    
    init(call: Call) {
        self.call = call
        
        let detector = CurrentValueSubject<CGFloat, Never>(0)
        self.publisher = detector
            .debounce(for: .seconds(0.2), scheduler: DispatchQueue.main)
            .dropFirst()
            .eraseToAnyPublisher()
        self.detector = detector
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 350, height: 200)
                        .overlay (
                            Image(call.scientistImage)
                               .resizable()
                               .scaledToFit()
                               .shadow(radius: 5)
                        )

                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Education")
                                .bold()
                                .font(.custom("Silom", size: 21))
                                .padding()
                            
                            Spacer()
                        }
                        
                        Text(call.education)
                            .padding(.horizontal)
                            .font(.custom("Single Day", size: 20))
                    }
                    
                    VStack {
                        HStack {
                            Text("Biography")
                                .bold()
                                .font(.custom("Silom", size: 21))
                                .padding()
                            
                            Spacer()
                        }
                        
                        Text(call.biography)
                            .padding(.horizontal)
                            .font(.custom("Single Day", size: 20))
                       
                        VStack {
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: 400, height: 200)
                                .overlay (
                                    Image(call.endingImage)
                                        .resizable()
                                        .frame(width: 350, height: 200)
                                        .scaledToFit()
                                        .shadow(radius: 5)
                                )
                        }
                        
                        Text(call.subtitle)
                            .font(.custom("Single Day", size: 18))
                            .italic()
                    }
                    
                    Spacer()
                }
                .background(GeometryReader {
                    Color.clear.preference(key: ViewOffsetKey.self, value: -$0.frame(in: .named("scroll")).origin.y)
                })
                .onPreferenceChange(ViewOffsetKey.self) { scrollOffset in
                    completeReading = scrollOffset >= 864
                    detector.send(scrollOffset)
                }
                
                Spacer()
            }
            .coordinateSpace(name: "scroll")
            .onReceive(publisher) {
                print("Stopped on: \($0)")
            }
            .navigationTitle(call.navigationTitle)
        }
        
        NavigationLink(destination: Carousel().navigationBarBackButtonHidden(true)) {
            Text("Done")
                .frame(height: UIScreen.main.bounds.height / 25)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
        .disabled(!completeReading)
        .padding([.leading, .trailing])
    }
}
    

struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}

#Preview {
    BiographyView(call: Call(id: Container.elements[0].id,
                             navigationTitle: Container.elements[0].navigationTitle,
                             scientistImage: Container.elements[0].scientistImage,
                             education: Container.elements[0].education,
                             biography: Container.elements[0].biography,
                             endingImage: Container.elements[0].endingImage,
                             subtitle: Container.elements[0].subtitle))
}
