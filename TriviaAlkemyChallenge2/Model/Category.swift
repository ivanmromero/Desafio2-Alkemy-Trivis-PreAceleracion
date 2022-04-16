//
//  CategoriesServices.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 14/04/2022.
//

import Foundation

struct Category:Codable {
    
    let trivia_categories: [Categories]
    
}

struct Categories:Codable {
    
    let id: Int
    let name: String
    
}
