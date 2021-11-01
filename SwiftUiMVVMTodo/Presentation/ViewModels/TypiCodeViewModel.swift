//
//  TypiCodeViewModel.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//
import MapKit
import SwiftUI
import Foundation

final class TypiCodeViewModel: ObservableObject{
    @Published var items: [TypicodeTodo] = []
    
    @Published var typicodeUser: TypiCodeUser? = nil
    @Published var todoItem: TypicodeTodo? = nil
    
   // @State var viewDetailed: Bool = false
    
    
    @State var region: MKCoordinateRegion

    @Published var isLoadingItems: Bool = false
    
    private let repository: TypicodeRepositoryProtocol
    
    init(repository: TypicodeRepositoryProtocol = TypiCodeRepository()) {
        self.repository = repository
        self.isLoadingItems = true
        
        self.region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 0.0,
            longitude: 0.0
        ),
        latitudinalMeters: 3000,
        longitudinalMeters: 3000)
        
        self.repository.getAllTodos { todos in
            self.items = todos
            self.isLoadingItems = false
        }
        
    }
    
    func filterTodos(isComplete: Bool) -> [TypicodeTodo] {
        
        let todos = self.items.filter{ todo in
            todo.completed == true
        }
        return todos
    }
    
    func addTodoItem(todoItem: TypicodeTodo) {
        self.todoItem = todoItem
    }
    
    
    func getUserById(userId: Int) {
//        DispatchQueue.main.async {
            self.repository.getTypiCodeUserById(userId: userId) { user in
              


                self.typicodeUser = user

//                self.region = MKCoordinateRegion(
//                center: CLLocationCoordinate2D(
//                    latitude:  Double(user.address.geo.lat) ?? 0.0,
//                    longitude: Double(user.address.geo.lng) ?? 0.0
//                ),
//                latitudinalMeters: 3000,
//                longitudinalMeters: 3000)
            
//            }
        }
        
    }
    
}
