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
