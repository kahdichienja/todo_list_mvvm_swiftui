//
//  TodoListApiService.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import Foundation




final class TodoListApiService: TodoListApiServiceProtocal{
    func fetchUser(completion: (TodoListItem) -> Void) {
        completion(.init(action: "Swift Ui Is Awesome"))
    }
}
