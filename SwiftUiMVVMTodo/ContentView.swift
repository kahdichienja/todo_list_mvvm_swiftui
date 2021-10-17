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
                TodoListView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
