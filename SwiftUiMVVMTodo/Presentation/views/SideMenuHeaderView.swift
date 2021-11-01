//
//  SideMenuHeaderView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 19/10/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark").frame(width: 32, height: 32).foregroundColor(.white).padding()
            })
            VStack(alignment: .leading){
                Image(systemName: "person.2.fill")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(5)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    .shadow(radius: 1)
                Text("Ago")
                    .font(.system(size: 24, weight: .semibold))
                Text("@Kchineja")
                    .font(.system(size: 14)).padding(.bottom, 16)
                
                HStack(spacing: 12){
                    HStack{
                        Text("21k").bold()
                        Text("Followers")
                    }
                    HStack{
                        Text("213").bold()
                        Text("Following")
                    }
                    Spacer()
                }
                Spacer()
                
            }.padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
