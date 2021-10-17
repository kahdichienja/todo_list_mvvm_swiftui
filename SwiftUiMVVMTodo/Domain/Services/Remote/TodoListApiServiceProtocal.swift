//
//  TodoListApiServiceProtocal.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation

protocol TodoListApiServiceProtocal {
    func fetchUser(completion: (TodoListItem) -> Void )
}
