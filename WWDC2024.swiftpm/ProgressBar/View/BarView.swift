//
//  SwiftUIView.swift
//  
//
//  Created by Ana Elisa Lima on 15/02/24.
//

import SwiftUI

enum progressReading: Int, CaseIterable {
    case valentinaTereshkova = 10
    case sallyRide = 20
    case maeJemison = 30
    case ellenOchoa = 40
    case chiakiMukai = 50
    case eileenCollins = 60
    case kalpanaChawla = 70
    case liuYang = 80
    case samanthaChistoforetti = 90
    case christinaKoch = 100
}

struct BarView: View {
    @State var percent: CGFloat = 0
    var currentReading: progressReading
    
    var body: some View {
        VStack {
            CustomProgressView(percent: self.$percent)
        }
        .padding()
        
        .onTapGesture {
            self.percent = 0.10
        }
        .animation(.spring, value: 5)
    }
}

struct CustomProgressView: View {
    @Binding var percent: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack(alignment: .trailing) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 22)
                
                Text(String(format: "%.0f", self.percent * 100) + "%").font(.caption).foregroundColor(Color.gray.opacity(0.75)).padding(.trailing)
            }
            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color(red: 1, green: 1,blue: 0.94), Color.white]), startPoint: .leading, endPoint: .trailing))
                .frame(width: self.calPercent(), height: 22)
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

struct listOfBiographies: View {
    @State private var currentReading: progressReading = .valentinaTereshkova
    
    var body: some View {
        VStack{
            BarView(currentReading: currentReading)
                .padding()
        }
    }
}

#Preview {
    listOfBiographies()
}
