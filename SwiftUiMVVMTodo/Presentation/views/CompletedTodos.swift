//
//  CompletedTodos.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 20/10/2021.
//

import SwiftUI

struct CompletedTodos: View {
    @ObservedObject var viewModel: TypiCodeViewModel = TypiCodeViewModel()
    @State private var showDetail = false
    
    var body: some View {
        VStack{
            NavigationLink(destination: TypiCodeTodoItemView(), isActive: $showDetail){
            }
            List(viewModel.filterTodos(isComplete: true)){item in
                HStack{
                    Button(
                        action: {
                            viewModel.getUserById(userId: item.userId)
                            viewModel.addTodoItem(todoItem: item)
                            self.showDetail = true
                            print(item)
                        }, label: {
                            TodoRowView(
                                title: item.title,
                                completed: item.completed
                            )
                        }
                    )
                }
            }
        }.navigationTitle("Completed Todo List")
    }
}

struct CompletedTodos_Previews: PreviewProvider {
    static var previews: some View {
        CompletedTodos()
    }
}
