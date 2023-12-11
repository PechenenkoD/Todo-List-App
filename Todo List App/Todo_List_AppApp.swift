//
//  Todo_List_AppApp.swift
//  Todo List App
//
//  Created by Dmitro Pechenenko on 25.11.2023.
//

import SwiftUI

@main
struct Todo_List_AppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
