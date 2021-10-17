//
//  NetworkResource.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation


enum NetworkResource<Success, Failure: Error>{
    case success(Success)
    case failure(Failure)
}

enum ErrorMessageString: String, Error{
    case unableToComplete = "Unable to complete the request, Check you internet connection"
    case inValidData = "Invalid Data"
}

