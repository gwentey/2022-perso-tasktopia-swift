//
//  NewCard.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import SwiftUI

struct NewCardView: View {
    
    @State var liste : Liste
    
    @State var front = ""
    @State var behind = ""
    @Binding var showNewCardView: Bool
    
    let lightGreyColor = Color (red: 239.0/255.0, green: 243.0/255.0, blue:
                                    244.0/255.0)
    
    var body: some View {
        
        VStack{
            
            Text(liste.emoji)
                .font(.system(size: 50))
            Text(liste.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Spacer()
            
            TextField("Face", text: $front, axis : .vertical)
                .lineLimit(3)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(10)
            
            Divider()
            
            TextField("Arrière", text: $behind)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(10)
            
            Spacer()
            
            Button("Valider"){
                liste.addCard(Card(front: front, behind: behind))
                showNewCardView.toggle()
            }.tint(Color.green)
            .buttonStyle(.borderedProminent)
            .cornerRadius(5)
        }.padding(.horizontal)
        
        
    }
    
}


struct NewCard_Previews: PreviewProvider {
    static var previews: some View {
        NewCardView(liste: Liste.list[0], showNewCardView: .constant(true))
    }
}
