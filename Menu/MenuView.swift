//
//  ContentView.swift
//  Menu
//
//  Created by Ihsan on 05/05/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
       
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
        }
        .listStyle(.plain)
        .onAppear{
//            call for the data
            menuItems = dataService.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
