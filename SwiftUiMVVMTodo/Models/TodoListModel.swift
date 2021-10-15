//
//  TodoListModel.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import Foundation
//model
struct TodoListItem: Identifiable {
    var id = UUID()
    var action: String
    
}
