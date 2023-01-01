//
//  ListCardView.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import SwiftUI

struct ListCardView: View {
    var body: some View {

        ListItemView(liste: Liste.list[0])
    }
}

struct ListItemView : View {
    let liste : Liste
    
    var body : some View {
        HStack {
            Text(liste.name)
                .font(.headline)
                .lineLimit(1)
                
        }
    }
    
    
}

struct ListCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListCardView()
    }
}
