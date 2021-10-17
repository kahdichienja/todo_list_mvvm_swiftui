//
//  TypiCodeRepository.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation


protocol TypicodeRepositoryProtocol {
    func getAllTodos(completion: @escaping ([TypicodeTodo]) -> ())
    func getTypiCodeUserById(userId: Int,completion: @escaping (TypiCodeUser) -> ())
}


final class TypiCodeRepository: TypicodeRepositoryProtocol{

    private let apiService : TypicodeApiServiceProtocol
    
    init(apiService: TypicodeApiServiceProtocol = TypicodeApiService() ) {
        self.apiService = apiService
    }
    
    func getAllTodos(completion: @escaping ([TypicodeTodo]) -> ()) {
        apiService.getTodos(completion: completion)
    }
    
    func getTypiCodeUserById(userId: Int,completion: @escaping (TypiCodeUser) -> ()){
        apiService.getTypiCodeUser(userId: userId, completion: completion)
    }
    
}

