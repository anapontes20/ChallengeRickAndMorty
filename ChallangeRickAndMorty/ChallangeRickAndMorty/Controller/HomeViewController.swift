//
//  ViewController.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    let homeManager = HomeManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeView
        homeView.listaPersonagens.dataSource = self
        homeView.listaPersonagens.delegate = self
        title = "Personagens"
        homeManager.callApi()
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

//extension HomeViewController: HomeManagerDelegate {
//    func didUpdateHome(_ HomeManager: HomeManager, home: HomeModel) {
//        DispatchQueue.main.async {
//        self.nomePersonagem.text = home.nomeDoPersonagem
//        self.posterPersonagem.image = UIImage(systemName: home.posterDoPersonagem)
//        self.statusDoPersonagem.text = home.statusDoPersonagem
//    }
//
//
//        }
//
//    }
