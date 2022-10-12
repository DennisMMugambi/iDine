//
//  ContentView.swift
//  Shared
//
//  Created by dennis mugambi on 12/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
        
        NavigationView {
        List {
            ForEach(menu) {section in
                Section(header: Text(section.name)) {
                
                ForEach(section.items) { item in
                    Text(item.name)
                }
                }
            }
        }
        .navigationTitle("Menu")
        .listStyle(GroupedListStyle())
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
