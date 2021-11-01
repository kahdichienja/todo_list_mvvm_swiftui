//
//  TodoListViewModel.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import Foundation


final class TodoListViewModel: ObservableObject{
    @Published var items: [TodoListItem] = [
        TodoListItem(action: "Learning SwiftUi"),
        TodoListItem(action: "Learning Swift"),
    ]
    
    
    @Published var username: String = ""
    
    private let repository: TodoListRepositoryProtocal
    
    init(repository: TodoListRepositoryProtocal = TodoListRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        DispatchQueue.main.async {
            self.repository.fetchUser{
                todo in
                self.username = todo.action
               
                self.items  = [TodoListItem(action: "Learning Clean Architecture"),]
            }
        }
       
    }
    
    func addTodos(){
        self.items = [
            TodoListItem(action: "Learning Io"),
            TodoListItem(action: "Learning MVVM IOS"),
            
        ]
    }
    
    func newTodo(new: TodoListItem){
        
        self.items.append(new)
        
    }
}
