//
//  ListView.swift
//  Todo List App
//
//  Created by Dmitro Pechenenko on 25.11.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Item 1",
        "Item 2",
        "Item 3"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 🚀")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
