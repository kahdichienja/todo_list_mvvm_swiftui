//
//  SideMenuView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 19/10/2021.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack{
                //header
                SideMenuHeaderView(isShowing: $isShowing).foregroundColor(.white).frame(height: 240)
                //MenuItems
                ForEach(SideMenuViewModel.allCases, id:\.self){ option  in
                    NavigationLink(
                        destination: ZStack{
                            switch option{
                            case .profile:
                                Text("Profile Screen")
                            case .lists:
                                TodoListView()
                            case .bookmarks:
                                TodoListView()
                            case .messages:
                                Text("Chat Screen")
                            case .notifications:
                                Text("Notification Screen")
                            case .logout:
                                Text("Login Screen")
                            }
                        },
                        label: {
                            MenuItemsView(menuItems: option)
                        }
                    )
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
