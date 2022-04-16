//
//  CategoriesViewController.swift
//  TriviaAlkemyChallenge2
//
//  Created by Ivan Romero on 14/04/2022.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var categoriesTableView: UITableView!
    
    private var viewModel: CategoriesViewModel!
    
    //private var categoriesServices = CategoriesServices()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = CategoriesViewModel(service: CategoriesServices())
        
        self.categoriesTableView.dataSource = self
        self.categoriesTableView.delegate = self
        self.categoriesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        getCategories()
    }
    
    func getCategories() {
       
        viewModel.getCategories {
            self.categoriesTableView.reloadData()
        }
        
    }
    
}

extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getCategoriesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = viewModel.getCategoriesName(at: indexPath.row)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//    }
    
}
