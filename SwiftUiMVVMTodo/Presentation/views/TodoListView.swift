//
//  TodoListView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var viewModel: TypiCodeViewModel = TypiCodeViewModel()
    @State private var isShowAddTodo = false
    @State private var searchText: String  = ""
    var body: some View {
        VStack{
            if(viewModel.isLoadingItems){
                ProgressView()
                Text("Loading...")
            }else{
                NavigationLink(destination: TypiCodeTodoItemView(), isActive: $isShowAddTodo){
                    
                }
                List(viewModel.filterTodos(isComplete: true)){item in
                    HStack{
                        TodoRowView(
                            title: item.title,
                            completed: item.completed
                        ).onTapGesture {
                            viewModel.getUserById(userId: item.userId)
                            
                            viewModel.todoItem = item
                            
                            self.isShowAddTodo = true
                            print(item)
                        }
                    }
                }
            }
            
        }.navigationTitle("Todo List")
        .navigationBarItems(
            trailing: Button(
                action: {
                    self.isShowAddTodo = true
                }, label: {
                    Text("Add")
                }
                
            )
        )
        
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
