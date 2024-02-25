//
//  Call.swift
//  Firstly: She
//
//  Created by Ana Elisa Lima on 07/02/24.
//

import Foundation

// MARK: - Call
/* Call model related to Container */

struct Call: Codable {
    var id: Int
    var navigationTitle: String
    var scientistImage: String
    var education: String
    var biography: String
    var endingImage: String
    var subtitle: String
    var isRead: Bool
}
