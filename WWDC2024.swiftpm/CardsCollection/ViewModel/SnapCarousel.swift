//
//  SnapCarousel.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 24/01/24.
//

import SwiftUI

// MARK: - SnapCarousel
/* Creates the logic behind the carousel */

struct SnapCarousel<Content: View, T: Identifiable>: View {
    @Binding var index: Int
    var content: (T) -> Content
    var list: [T]
    var spacing: CGFloat
    var trailingSpace: CGFloat
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T) -> Content) {
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMentWidth = (trailingSpace / 2) - spacing
            
            HStack(spacing: spacing) {
                ForEach(list) { item in
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustMentWidth : 0) + offset)
            .highPriorityGesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out =  value.translation.width
                })
                
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width
                        let newIndex = (CGFloat(index) + progress).rounded()
                        index = min(max(Int(newIndex), 0), list.count - 1)
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width
                        let roundIndex = progress.rounded()
                        
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        index = currentIndex
                })
                    .onChanged({value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width
                        let roundIndex = progress.rounded()
                        
                        index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                    })
            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
}
