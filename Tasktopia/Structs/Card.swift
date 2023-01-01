//
//  Card.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import Foundation

struct Card : Identifiable {
    
    let id = UUID()
    let front : String
    let behind : String
    
}

//extension Card {
//    static let list : [Card] = [
//        Card(front:"Bouger", behind:"Moove"),
//        Card(front:"Courir", behind:"Run"),
//        Card(front:"Dormir", behind:"Sleep")
//    ]
//}
