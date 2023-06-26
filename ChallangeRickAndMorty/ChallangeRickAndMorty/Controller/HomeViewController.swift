//
//  ViewController.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    let homeView = HomeView()
   // let searchController = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeView
        homeView.listaPersonagens.dataSource = self
        homeView.listaPersonagens.delegate = self
        title = "Personagens"
        
        
        
        //navigationItem.searchController = searchController
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeCell = tableView.dequeueReusableCell(withIdentifier: "home", for: indexPath) as! HomeCell

        return cell
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let detalhesViewController = DetalhesViewController()
          navigationController?.pushViewController(detalhesViewController, animated: true)
      }
}
