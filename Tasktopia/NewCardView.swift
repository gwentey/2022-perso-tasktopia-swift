//
//  NewCard.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import SwiftUI

struct NewCardView: View {
    @State var front = ""
    @State var behind = ""
    
    var body: some View {
        
        Form{
            TextField("Salut", text: $front)
        }
    }
}

struct NewCard_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView()
    }
}
