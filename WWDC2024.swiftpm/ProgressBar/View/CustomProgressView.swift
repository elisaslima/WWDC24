//
//  CustomProgressView.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 16/02/24.
//

import SwiftUI

// MARK: - CustomProgressView
/* Creates the view responsible to show the progress bar */

struct CustomProgressView: View {
    @EnvironmentObject private var currentReading: ProgressReading
    @Binding var progress: Double
    
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack(alignment: .trailing) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 22)
                
                Text(String(format: "%.0f",  CGFloat(currentReading.biographiesRead) * 10) + "%").font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
            }
            Capsule()
                .fill(Color.gray.opacity(0.12))
                .frame(width: self.calPercent(), height: 22)
        }
        .padding(12)
        .background(Color.black.opacity(0.085))
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        .preferredColorScheme(.light)
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
