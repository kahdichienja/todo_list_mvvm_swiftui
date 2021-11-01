//
//  TodoRowView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 20/10/2021.
//

import SwiftUI

struct TodoRowView: View {
    var title: String
    var completed: Bool
    
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            Image(systemName: completed ? "checkmark.square" : "square")
        }.padding()
        
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(title: "Learning", completed: false)
    }
}
