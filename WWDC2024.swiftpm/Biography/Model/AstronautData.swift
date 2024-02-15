//
//  File.swift
//  
//
//  Created by Ana Elisa Lima on 07/02/24.
//

//import Foundation
//
//class AstronautData {
//    
//    static func load<A: Codable>(name: String) -> [A] {
//        if let path = Bundle.main.path(forResource: name, ofType: "json") {
//            do {
//                let data = try Data(contentsOf: URL(fileURLWithPath: path))
//                let results = try JSONDecoder().decode([A].self, from: data)
//                return results
//            } catch {
//                return []
//            }
//        }
//        return []
//    }
//}
