//
//  SideMenuViewModel.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 19/10/2021.
//

import Foundation
import SwiftUI

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case messages
    case notifications
    case logout
    
    var title: String{
        switch self {
            
        case .profile:
            return "Profile"
        case .lists:
            return "Todos"
        case .bookmarks:
            return "Bookmarks"
        case .messages:
            return "Chats"
        case .notifications:
            return "Notification"
        case .logout:
            return "Logout"
        }
    }
    var imageName: String{
        switch self {
        case .profile:
            return "person"
        case .lists:
            return "list.bullet"
        case .bookmarks:
            return "bookmark"
        case .messages:
            return "bubble.left"
        case .notifications:
            return "bell"
        case .logout:
            return "arrow.left.square"
        }
    }

}
