//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 15/02/24.
//

import SwiftUI

enum progressReading: Int, CaseIterable {
    case zero = 0
    case ten = 10
    case twelve = 20
    case thirty = 30
    case forty = 40
    case fifty = 50
    case sixty = 60
    case seventy = 70
    case eighty = 80
    case ninety = 90
    case hundred = 100
}

struct BarView: View {
    @State private var currentReading: progressReading = .zero
    @State private var progress: Double = 0.10
    
    var body: some View {
        VStack {
            CustomProgressView(percent: Binding(get: {
                CGFloat(currentReading.rawValue) / 100
                    }, set: { newValue in
                    let newPercent = Int(newValue * 100)
                    if let newReading = progressReading(rawValue: newPercent) {
                    currentReading = newReading
                }
            }), progress: $progress)
                .padding()
        }
        .onTapGesture {
            let nextRawValue = currentReading.rawValue + 10
            if let nextStep = progressReading(rawValue: nextRawValue) {
            currentReading = nextStep
            progress = Double(nextRawValue) / 100
            }
        }
    }
}

#Preview {
    BarView()
}
