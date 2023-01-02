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
    var cards : [Card]
    let emoji : String
    
    func numberOfCard() -> Int {
        return cards.count
    }
    

    mutating func addCard(_ card: Card) {
        self.cards.append(card)
    }



}

extension Liste {
    static var list : [Liste] = [
        Liste(name: "Liste 1", cards: [
            Card(front:"Bouger", behind:"Moove"),
            Card(front:"Courir", behind:"Run"),
            Card(front:"Dormir", behind:"Sleep")
        ], emoji:"🇺🇸"),
        Liste(name: "Liste 2", cards: [
            Card(front:"Dancer", behind:"Dance"),
            Card(front:"Chapeau", behind:"Hat"),
            Card(front:"Pleurer", behind:"Cry")
        ], emoji:"🌐")
    ]
}


