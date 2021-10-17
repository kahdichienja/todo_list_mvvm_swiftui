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
                            Image(systemName: "square.and.pencil")
                            Text("Todo")
                        }
                    Image(systemName: "start.fill")
                        .tabItem {
                            Image(systemName: "start.fill")
                            Text("Completed")
                        }
                    Text("Profile Screen")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
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
