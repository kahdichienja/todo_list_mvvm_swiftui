//
//  ContentView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 15/10/2021.
//

import SwiftUI
struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                
                
                TabView {
                    TodoListView()
                        .tabItem {
                            Image(systemName: "1.square.fill")
                            Text("Todo")
                        }
                    Text("Another Tab")
                        .tabItem {
                            Image(systemName: "2.square.fill")
                            Text("Second")
                        }
                    Text("The Last Tab")
                        .tabItem {
                            Image(systemName: "3.square.fill")
                            Text("Third")
                        }
                }
                .font(.headline)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
