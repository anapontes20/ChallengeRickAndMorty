//
//  ViewController.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    let homeView = HomeView()
    //let searchController = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeView
        //view = celulaPersonagem
        homeView.listaPersonagens.dataSource = self
        homeView.listaPersonagens.delegate = self
        
        //navigationItem.searchController = searchController
    }


}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeCell = tableView.dequeueReusableCell(withIdentifier: "home", for: indexPath   )
        
        return homeCell
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
    
}
