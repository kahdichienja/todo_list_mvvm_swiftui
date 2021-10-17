//
//  NetworkResource.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation


enum NetworkResource<Success, Failure: Error, IsLoading>{
    case success(Success)
    case failure(Failure)
    case loading(IsLoading)
}

