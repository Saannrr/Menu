//
//  MenuListRow.swift
//  Menu
//
//  Created by Ihsan on 09/05/24.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
       
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            VStack{
                Text(item.name)
                    .bold()
            }
            Spacer()
            Text("$" + item.price)
        }.listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
        
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test", price: "3.99", imageName: "onigiri"))
    }
}
