//
//  ItemModel.swift
//  Todo List App
//
//  Created by Dmitro Pechenenko on 25.11.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
