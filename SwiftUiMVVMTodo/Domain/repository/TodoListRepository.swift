//
//  TodoListRepository.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation
protocol TodoListRepositoryProtocal {
    func fetchUser(completion: (TodoListItem) -> Void )
}
