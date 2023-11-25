//
//  ListView.swift
//  Todo List App
//
//  Created by Dmitro Pechenenko on 25.11.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Item 1", isCompleted: false),
        ItemModel(title: "Item 2", isCompleted: true),
        ItemModel(title: "Item 3", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
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
