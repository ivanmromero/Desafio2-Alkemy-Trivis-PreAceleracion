//
//  InitialViewController.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 13/04/2022.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startTrivia(_ sender: Any) {
        if let userName = textField.text, !userName.isEmpty{
          presentTabBarContoller()
        } else {
            noUserNameAlert()
        }
    }

    private func noUserNameAlert () {
        let alert = UIAlertController(title: "Alerta", message: "Por favor ingrese un nombre de usuario", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    private func presentTabBarContoller() {
  
        let tabBarController = TabBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true)
        
//        let categoriesViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
//        let navigationController = UINavigationController(rootViewController: categoriesViewController)
//        navigationController.modalPresentationStyle = .overFullScreen
//        self.present(navigationController, animated: true)
        
        
        
    }

}
