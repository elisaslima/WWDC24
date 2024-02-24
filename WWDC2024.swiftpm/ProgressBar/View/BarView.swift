//
//  BarView.swift
//  WWDC2024
//
//  Created by Ana Elisa Lima on 15/02/24.
//

import SwiftUI

// MARK: - BarView

struct BarView: View {
    @EnvironmentObject private var currentReading: ProgressReading
    @State private var progress: Double = 0.10
    
    var body: some View {
        VStack {
            CustomProgressView(progress: $progress)
                .padding()
        }
    }
}

#Preview {
    VStack {
        BarView()
    }
    .environmentObject(ProgressReading())
}
