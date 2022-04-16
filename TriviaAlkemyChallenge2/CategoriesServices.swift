//
//  CategoriesServices.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 14/04/2022.
//

import Foundation
import Alamofire

struct CategoriesServices {
    
    let APIClient = AlamofireAPIClient()
    
    func getCategories(succes: @escaping (_ category: Category)->()){
    
        let request = AF.request(APIClient.urlCategories)
        request.response { response in
            
            switch response.result {
            case .success(let data):
                do{
                    if let data = data{
                        let categories = try JSONDecoder().decode(Category.self, from: data)
                        succes(categories.self)
                    }
                } catch {
                    print(error.localizedDescription)
                }
                
            case .failure(let error):
                    print(error.localizedDescription)
            }
            
        }
    }
}
