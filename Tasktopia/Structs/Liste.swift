//
//  Liste.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import Foundation

struct Liste : Identifiable {
        
    let id = UUID()
    let name : String
    let cards : [Card]
}

extension Liste {
    static var list : [Liste] = [
        Liste(name: "Liste 1", cards: [
            Card(front:"Bouger", behind:"Moove"),
            Card(front:"Courir", behind:"Run"),
            Card(front:"Dormir", behind:"Sleep")
        ])
    ]
}

