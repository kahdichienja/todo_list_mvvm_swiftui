//
//  MenuItemsView.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 19/10/2021.
//

import SwiftUI

struct MenuItemsView: View {
    let menuItems: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: menuItems.imageName).frame(width: 24, height: 24)
            Text(menuItems.title).font(.system(size: 15, weight: .semibold))
            Spacer()
        }.foregroundColor(.white)
        .padding()
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView(menuItems: .bookmarks)
    }
}
