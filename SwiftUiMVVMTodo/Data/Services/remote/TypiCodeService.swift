//
//  TypiCodeService.swift
//  SwiftUiMVVMTodo
//
//  Created by AGO on 17/10/2021.
//

import Foundation

final class TypicodeApiService: TypicodeApiServiceProtocol{
    
    func getData<T>(_ type: T.Type, url: URL, completion: @escaping (NetworkResource<T, ErrorMessageString>) -> Void) where T : Decodable {
        let task = URLSession.shared.dataTask(with: url){data, response, error in
            
            if let _ = error {
                completion(.failure(.unableToComplete))
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
               return completion(.failure(.inValidData))
            }
            guard let data = data else {
               return completion(.failure(.inValidData))
            }
            do{
                let decoder = JSONDecoder()
                
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let result =  try decoder.decode(type, from: data)
                
                completion(.success(result))
                
            }catch{
                completion(.failure(.inValidData))
            }
            
        }
        
        task.resume()
    }
    
    
    func getTodos(completion: @escaping (NetworkResource<[TypicodeTodo], ErrorMessageString>) -> ()) {
        guard let url = URL(string: "\(StringUtil.BASE_URL)/todos") else {return}
    
        let task = URLSession.shared.dataTask(with: url){data, response, error in
            
            if let _ = error {
                completion(.failure(.unableToComplete))
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
               return completion(.failure(.inValidData))
            }
            
            guard let data = data else {
               return completion(.failure(.inValidData))
            }
            do{
                let decoder = JSONDecoder()
                
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let todos =  try decoder.decode([TypicodeTodo].self, from: data)
                
                completion(.success(todos))
                
            }catch{
                completion(.failure(.inValidData))
            }
            
        }
        
        task.resume()
    }
    
    func getTypiCodeUser(userId: Int, completion: @escaping (TypiCodeUser) -> ()) {
        guard let url = URL(string: "\(StringUtil.BASE_URL)/users/\(userId)") else {return}
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            let user = try! JSONDecoder().decode(TypiCodeUser.self, from: data!)
            DispatchQueue.main.async {
                completion(user)
            }
        }.resume()
    }
}
