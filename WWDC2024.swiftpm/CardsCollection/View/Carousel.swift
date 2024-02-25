//
//  Carousel.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 24/01/24.
//

import SwiftUI

// MARK: - Carousel

struct Carousel: View {
    var body: some View {
        Home(call: Call(id: Container.elements[0].id,
                        navigationTitle: Container.elements[0].navigationTitle,
                        scientistImage: Container.elements[0].scientistImage,
                        education: Container.elements[0].education,
                        biography: Container.elements[0].biography,
                        endingImage: Container.elements[0].endingImage,
                        subtitle: Container.elements[0].subtitle,
                        isRead: false))
    }
}

#Preview {
    Carousel()
}
