//
//  TodoListView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var viewModel: TodoListViewModel = TodoListViewModel()
    var body: some View {
        VStack{
            List(viewModel.items){
                item in
                Text(item.action)
            }
        }
        .onAppear{
            self.viewModel.onAppear()
        }
        .navigationTitle("Todo List \(viewModel.username)")
        .navigationBarItems(trailing: Button(
            action: {
                self.viewModel.addTodos()
            }, label: {
                Text("Refresh")
            }
        
        ))
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
