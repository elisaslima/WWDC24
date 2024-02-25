//
//  BarView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 15/02/24.
//

import SwiftUI

// MARK: - BarView

struct BarView: View {
    @EnvironmentObject private var currentReading: ProgressReading
    @State private var progress: Double = 0.10
    
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
        ZStack {
            Image(cases)
                .resizable()
                .frame(width: 50, height: 50)
                .onAppear{
                    print(CGFloat(currentReading.biographiesRead) / 10)
                }
                .offset(x: -140)
            
            CustomProgressView(progress: $progress)
        }
        .padding()
    }
}

#Preview {
    VStack {
        BarView()
    }
    .environmentObject(ProgressReading())
}
