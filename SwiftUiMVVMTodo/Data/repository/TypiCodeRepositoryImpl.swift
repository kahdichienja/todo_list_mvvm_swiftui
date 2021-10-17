//
//  TypiCodeRepository.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation


final class TypiCodeRepository: TypicodeRepositoryProtocol{

    private let apiService : TypicodeApiServiceProtocol
    
    init(apiService: TypicodeApiServiceProtocol = TypicodeApiService()) {
        self.apiService = apiService
    }
    
    func getAllTodos(completion: @escaping ([TypicodeTodo]) -> ()) {
        //pass generic up to view model.
        apiService.getTodos{
            result in
            switch result{
            case .success(let todos):
                completion(todos)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getTypiCodeUserById(userId: Int,completion: @escaping (TypiCodeUser) -> ()){
        apiService.getTypiCodeUser(userId: userId, completion: completion)
    }
    
}

