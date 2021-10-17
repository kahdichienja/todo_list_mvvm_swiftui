//
//  TypicodeApiServiceProtocol.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation

protocol TypicodeApiServiceProtocol {
    func getTodos(completion: @escaping (NetworkResource<[TypicodeTodo], ErrorMessageString>) -> ())
    func getTypiCodeUser(userId: Int, completion: @escaping (TypiCodeUser) -> ())
}
