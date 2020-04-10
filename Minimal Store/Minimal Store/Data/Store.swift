//
//  Store.swift
//  Minimal Store
//
//  Created by Roy Akash on 10/04/20.
//  Copyright © 2020 theroyakash. All rights reserved.
//

import Foundation
import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Double
    var restrictions: [String]
    var description: String
    var feature: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)"
    }
}
