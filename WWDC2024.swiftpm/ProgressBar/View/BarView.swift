//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 15/02/24.
//

import SwiftUI

struct BarView: View {
    var body: some View {
        
        CustomProgressView()
    }
}

#Preview {
    BarView()
}

struct CustomProgressView: View {
    var body: some View {
        
        ZStack {
            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color(red: 1, green: 1,blue: 0.94), Color.white]), startPoint: .leading, endPoint: .trailing))
                .frame(height: 20)
        }
    }
}
