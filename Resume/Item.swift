//
//  Item.swift
//  Resume
//
//  Created by Larissa Nogueira da Rocha on 14/3/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
