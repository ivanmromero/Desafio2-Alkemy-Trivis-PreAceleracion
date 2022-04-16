//
//  CategoriesViewModel.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 14/04/2022.
//

import Foundation
import UIKit

class CategoriesViewModel {
    
    private let categoriesService : CategoriesServices
    private var categories = [Categories]()
    
    init(service: CategoriesServices){
        self.categoriesService = service
    }
    
    func getCategories (completion: @escaping () -> Void){
        categoriesService.getCategories { category in
            self.categories = category.trivia_categories
            completion()
        }
    }
    
    func getCategory(at index: Int) -> Categories{
        return categories[index]
    }
    
    func getCategoriesCount () -> Int {
        return categories.count
    }
    
    func getCategoriesName(at index: Int) -> String{
        return getCategory(at: index).name
    }
    
    func printCategorie(){
        print(self.categories)
    }
    
}
