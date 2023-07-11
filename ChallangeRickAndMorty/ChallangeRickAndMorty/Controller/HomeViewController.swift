//
//  ViewController.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - VARIAVEIS
    
    var homeView = HomeView()
    var homeManager = HomeManager()
    var teste: RickAndMorty?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeManager.delegate = self
        homeView.listaPersonagens.dataSource = self
        homeView.listaPersonagens.delegate = self
        homeManager.callApi()

        view = homeView
        title = "Personagens"
    }
}

// MARK: - DELEGATE

extension HomeViewController: HomeManagerDelegate {
    func didUpdateHome(_ HomeManager: HomeManager, rickAndMorty: RickAndMorty) {
        teste = rickAndMorty
        
        DispatchQueue.main.async {
            self.teste = rickAndMorty
            self.homeView.listaPersonagens.reloadData()
        }
    }
}

//MARK: - TABLEVIEW
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return homeManager.myUrl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeCell = tableView.dequeueReusableCell(withIdentifier: "home", for: indexPath) as! HomeCell
      //  cell.celula.nomePersonagem.text = teste?.results[indexPath.row].name
        
        if let nome = teste { cell.celula.nomePersonagem.text = nome.results[indexPath.row].name
            print(nome.results[indexPath.row].name)
        }
        if let status = teste { cell.celula.statusDoPersonagem.text = "Status \(status.results[indexPath.row].status)"
        }
        if let urlString = teste?.results[indexPath.row].image as? String {
                if let imageURL = URL(string: urlString) {
                    DispatchQueue.global().async {
                        guard let imageData = try? Data(contentsOf: imageURL) else { return }
                        let image = UIImage(data: imageData)
                        DispatchQueue.main.async {
                            cell.celula.posterPersonagem.image = image
                        }
                    }
                }
            }
        return cell
    }
}

// MARK: - TRANSICAO PRA TELA DE DETALHES:
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCharacterId = teste?.results[indexPath.row].id
        let detailVC = DetalhesViewController()
        detailVC.selectedCharacterID = selectedCharacterId ?? 0
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

