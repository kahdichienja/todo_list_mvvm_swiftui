//
//  AddTodoFormView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 16/10/2021.
//

import SwiftUI

struct AddTodoFormView: View {
    @State private var username = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var birthdate = Date()
    @State private var shouldSendNews = false
    @State private var numberOfLikes = 0
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("Username", text: $username)
                    TextField("First Name", text: $firstname)
                    TextField("Last Name", text: $lastname)
                    DatePicker("Birth Date", selection: $birthdate, displayedComponents: .date)
                    
                }
                Section(header: Text("Actions")){
                    Toggle("Send Mail", isOn: $shouldSendNews).toggleStyle(SwitchToggleStyle(tint: .green))
                    Stepper("Mails Per Day", value: $numberOfLikes)
                    Text("We will send \(numberOfLikes) mails in a day")
                    Link("Terms Of Use", destination: URL(string: "https://apple.com")!)
                }
            }
            .navigationTitle("Account Update")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        hideKeyboard()
                    }
                    label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    Button("Save", action: saveUser)
                }
            }
        }.accentColor(.blue)
    }
    func saveUser(){
        print("Saved")
    }
}

struct AddTodoFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoFormView()
    }
}


#if canImport(UIKit)

extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#endif
