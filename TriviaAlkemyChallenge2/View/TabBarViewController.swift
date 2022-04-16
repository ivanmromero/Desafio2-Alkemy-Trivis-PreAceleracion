//
//  TabBarViewController.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 14/04/2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstTabTitle = "Categories"
        let firstTabImage = UIImage(systemName: "list.dash")
        
        let secondTabTitle =  "Random"
        let secondTabImage = UIImage(systemName: "shuffle")
        
        
        let firstTabViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTabViewController.title = firstTabTitle
        
        let firstTabNavigationController = UINavigationController(rootViewController: firstTabViewController)
        
        firstTabNavigationController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTabImage, selectedImage: nil)
        
        
        let secondViewController = QuestionViewController(nibName: "QuestionViewController", bundle: nil)
        secondViewController.title = secondTabTitle
        
        let secondTabNavigationController = UINavigationController(rootViewController: secondViewController)
        
        secondTabNavigationController.tabBarItem = UITabBarItem(title: secondTabTitle, image: secondTabImage, selectedImage: nil)
        
        viewControllers = [firstTabNavigationController,secondTabNavigationController]
    }
    
}
