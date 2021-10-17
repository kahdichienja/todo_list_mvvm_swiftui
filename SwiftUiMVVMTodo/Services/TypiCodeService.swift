//
//  TypiCodeService.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation

protocol TypicodeApiServiceProtocol {
    func getTodos(completion: @escaping([TypicodeTodo]) -> () )
    func getTypiCodeUser(userId: Int, completion: @escaping (TypiCodeUser) -> ())
}


final class TypicodeApiService: TypicodeApiServiceProtocol{
    func getTodos(completion: @escaping ([TypicodeTodo]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {return}
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            
            let todos = try! JSONDecoder().decode([TypicodeTodo].self, from: data!)
            
            DispatchQueue.main.async {
                completion(todos)
            }
        }.resume()
    }
    func getTypiCodeUser(userId: Int, completion: @escaping (TypiCodeUser) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users/\(userId)") else {return}
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            let user = try! JSONDecoder().decode(TypiCodeUser.self, from: data!)
            DispatchQueue.main.async {
                completion(user)
            }
        }.resume()
    }
}
