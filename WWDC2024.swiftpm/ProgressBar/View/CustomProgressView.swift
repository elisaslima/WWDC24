//
//  CustomProgressView.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 16/02/24.
//

import SwiftUI

// MARK: - CustomProgressView
/* Creates the view responsible to show the progress bar */

struct CustomProgressView: View {
    @EnvironmentObject private var currentReading: ProgressReading
    
    @Binding var progress: Double
    var cases: String {
        switch (CGFloat(currentReading.biographiesRead) / 10) {
        case 0.0..<0.20:
            return "mood1"
            
        case 0.20..<0.40:
            return "mood2"
            
        case 0.40..<0.60:
            return "mood3"
            
        case 0.60..<0.80:
            return "mood4"
            
        case 0.80..<1.0:
            return "mood5"
            
        default:
            return "mood5"
        }
    }
    
    var body: some View {
            ZStack(alignment: .leading) {
                Image(cases)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                    .onAppear{
                        print(CGFloat(currentReading.biographiesRead) / 10)
                    }
                            
                ZStack(alignment: .trailing) {
                    Capsule().fill(Color.black.opacity(0.08)).frame(height: 22)
                    
                    Text(String(format: "%.0f",  CGFloat(currentReading.biographiesRead) * 10) + "%").font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
                }
                Capsule()
                    .fill(Color.gray.opacity(0.12))
                    .frame(width: self.calPercent(), height: 22)
            }
            .padding()
        }
    
    func calPercent() -> CGFloat {
        let width = UIScreen.main.bounds.width - 66
        return width * (CGFloat(currentReading.biographiesRead) / 10)
    }
}

#Preview {
    VStack {
        BarView()
    }
    .environmentObject(ProgressReading())
}
