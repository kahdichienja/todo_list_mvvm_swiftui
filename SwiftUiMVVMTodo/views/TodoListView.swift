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
    var body: some View {
        NavigationView{
             VStack{
                NavigationLink(destination: AddTodoFormView(), isActive: $isShowAddTodo){
                    
                }
                List(viewModel.items){
                    item in
                    NavigationLink(destination: TypiCodeTodoItemView(userId: item.userId, item: item)){
                        HStack{
                            Text(item.title)
                            Spacer()
                            Image(systemName: item.completed ? "checkmark.square" : "square")
                        }.padding()
                    }
                    
                }
                
            }
//            .onAppear{
//                self.viewModel.onAppear()
//            }
            .navigationTitle("Todo List")
            .navigationBarItems(trailing: Button(
                action: {
                    self.isShowAddTodo = true
                    //self.viewModel.addTodos()
                }, label: {
                    Text("Add")
                }
            
            ))
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
