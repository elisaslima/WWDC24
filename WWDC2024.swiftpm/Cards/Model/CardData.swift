//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 18/01/24.
//

import Foundation
import SwiftUI

struct CardData: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var cardInformation: String
    var index: Int
    
    static let card: [CardData] = [
        CardData(image: "post1",
                 cardInformation: "Valentina Tereshkova was the first woman to go to space in 1963",
                 index: 1),
        
        CardData(image: "post2",
                 cardInformation: "Sally Ride was the first American female astronaut to go to space in 1983",
                 index: 2),
        
        CardData(image: "post3",
                 cardInformation: "Mae Jemison was the first black woman to go to space in 1992",
                 index: 3),
        
        CardData(image: "post4",
                 cardInformation: "Ellen Ochoa was the first hispanic female astronaut to go to space in 1993",
                 index: 4),
        
        CardData(image: "post5",
                 cardInformation: "Chiaki Mukai was the first Japanese female astronaut to go to space in 1994",
                 index: 5),
        
        CardData(image: "post6",
                 cardInformation: "Eileen Collins was the first female pilot astronaut in 1995 and the first female commander in the space shuttle history in 1999",
                 index: 6),
        
        CardData(image: "post7",
                 cardInformation: "Kalpana Chawla was the first woman of Indian origin to go to space in 1997",
                 index: 7),
        
        CardData(image: "post8",
                 cardInformation: "Liu Yang was the first Chinese female astronaut to go to space in 2012",
                 index: 8),
        
        CardData(image: "post9",
                 cardInformation: "Samantha Cristoforetti was the first Italian female astronaut to go to space in 2014",
                 index: 9),
        
        CardData(image: "post10", 
                 cardInformation: "Christina Koch is going to be the first woman to orbit the Moon in 2025",
                 index: 10)
    ]
    
    static func generateCards() -> [CardData] {
        return [
            CardData(image: "post1",
                     cardInformation: "Valentina Tereshkova was the first woman to go to space in 1963",
                     index: 1),
            
            CardData(image: "post2",
                     cardInformation: "Sally Ride was the first American female astronaut to go to space in 1983",
                     index: 2),
            
            CardData(image: "post3",
                     cardInformation: "Mae Jemison was the first black woman to go to space in 1992",
                     index: 3),
            
            CardData(image: "post4",
                     cardInformation: "Ellen Ochoa was the first hispanic female astronaut to go to space in 1993",
                     index: 4),
            
            CardData(image: "post5",
                     cardInformation: "Chiaki Mukai was the first Japanese female astronaut to go to space in 1994",
                     index: 5),
            
            CardData(image: "post6",
                     cardInformation: "Eileen Collins was the first female pilot astronaut in 1995 and the first female commander in the space shuttle history in 1999",
                     index: 6),
            
            CardData(image: "post7",
                     cardInformation: "Kalpana Chawla was the first woman of Indian origin to go to space in 1997",
                     index: 7),
            
            CardData(image: "post8",
                     cardInformation: "Liu Yang was the first Chinese female astronaut to go to space in 2012",
                     index: 8),
            
            CardData(image: "post9",
                     cardInformation: "Samantha Cristoforetti was the first Italian female astronaut to go to space in 2014",
                     index: 9),
            
            CardData(image: "post10",
                     cardInformation: "Christina Koch is going to be the first woman to orbit the Moon in 2025",
                     index: 10)
        ]
    }
}
