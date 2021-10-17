//
//  TypiCodeModel.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation

struct TypicodeTodo: Decodable, Identifiable{
    var id: Int
    var userId: Int
    var title: String
    var completed: Bool
}

struct TypiCodeUser : Decodable, Identifiable{
    var  id: Int
    var name: String
    var username: String
    var email: String
    var address:  Address
    
    struct Address : Decodable{
        var street: String
        var suite: String
        var city: String
        var zipcode: String
        var geo: Geo
        struct Geo: Decodable {
            var lat: String
            var lng: String
        }
    }
    var phone: String
    var website: String
    var company: Company
    struct Company : Decodable{
        var name: String
        var catchPhrase: String
        var bs: String
    }
}
