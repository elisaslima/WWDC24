//
//  File.swift
//  
//
//  Created by Ana Elisa Lima on 14/02/24.
//

//import SwiftUI
//
//enum ProgressBarStep: Int, CaseIterable {
//    case valentinaTereshkova = 10
//    case sallyRide = 20
//    case maeJemison = 30
//    case ellenOchoa = 40
//    case chiakiMukai = 50
//    case eileenCollins = 60
//    case kalpanaChawla = 70
//    case liuYang = 80
//    case samanthaChistoforetti = 90
//    case christinaKoch = 100
//}
//
//struct ProgressBarView: View {
//    var currentStep: ProgressBarStep
//    
//    var body: some View {
//        VStack {
//            Text("Progress: \(currentStep.rawValue)%")
//            ProgressBar(progress: currentStep.rawValue)
//        }
//    }
//}
//
//struct ProgressBar: View {
//    var progress: Int
//    
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .leading) {
//                Rectangle()
//                    .foregroundColor(.gray)
//                    .frame(width: geometry.size.width, height: 10)
//                
//                Rectangle()
//                    .foregroundColor(.green)
//                    .frame(width: CGFloat(progress) * geometry.size.width / 100, height: 10)
//                    .animation(.linear, value: 2)
//            }
//        }
//    }
//}
//
//struct ContentView2: View {
//    @State private var currentStep: ProgressBarStep = .valentinaTereshkova
//
//    var body: some View {
//        VStack {
//            ProgressBarView(currentStep: currentStep)
//                .padding()
//
//            Button("Next Step") {
//                if let nextStep = ProgressBarStep(rawValue: currentStep.rawValue + 10) {
//                    currentStep = nextStep
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//#Preview {
//    ContentView2()
//}

