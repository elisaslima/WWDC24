//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 16/02/24.
//

import SwiftUI

struct CustomProgressView: View {
    @Binding var percent: CGFloat
    
    @Binding var progress: Double
    var color: Color {
        switch progress {
        case 0.0..<0.20:
            return .red
            
        case 0.20..<0.40:
            return .orange
            
        case 0.40..<0.60:
            return .yellow
            
        case 0.60..<0.80:
            return .mint
            
        case 0.80..<1.0:
            return .green
            
        default:
            return .green
        }
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack(alignment: .trailing) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 22)
                
                Text(String(format: "%.0f", self.percent * 100) + "%").font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
            }
            Capsule()
                .fill(color)
                .frame(width: self.calPercent(), height: 22)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.percent = min(max(0, value.location.x / UIScreen.main.bounds.width), 1)
                        })
                )
        }
        .padding()
        .background(Color.black.opacity(0.085))
        .cornerRadius(15.0)
    }
    
    func calPercent() -> CGFloat {
        let width = UIScreen.main.bounds.width - 66
        return width * self.percent
    }
}


