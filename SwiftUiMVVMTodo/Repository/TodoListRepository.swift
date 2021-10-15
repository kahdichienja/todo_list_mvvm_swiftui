//
//  TodoListRepository.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import Foundation


protocol TodoListRepositoryProtocal {
    func fetchUser(completion: (TodoListItem) -> Void )
}



final class TodoListRepository: TodoListRepositoryProtocal{
    // fetch from API service
    private let apiService : TodoListApiServiceProtocal
    
    
    init(apiService: TodoListApiServiceProtocal = TodoListApiService() ) {
        self.apiService = apiService
    }
    func fetchUser(completion: (TodoListItem) -> Void) {
        apiService.fetchUser(completion:  completion )
    }
    
    
}
