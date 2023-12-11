//
//  ListViewModel.swift
//  Todo List App
//
//  Created by Dmitro Pechenenko on 25.11.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItem = [
            ItemModel(title: "Item 1", isCompleted: false),
            ItemModel(title: "Item 2", isCompleted: true),
            ItemModel(title: "Item 3", isCompleted: false)
        ]
        items.append(contentsOf: newItem)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex { (existingItem) -> Bool in
            return existingItem.id == item.id
        } {
            
        }
    }
    
}
