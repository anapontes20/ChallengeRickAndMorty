//
//  HomeManager.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation
import UIKit

protocol HomeManagerDelegate {
    func  didUpdateHome(_ HomeManager: HomeManager, rickAndMorty: RickAndMorty)
}

struct HomeManager {
    
    let myUrl = "https://rickandmortyapi.com/api/character"
    var delegate: HomeManagerDelegate?

    func callApi() {
        if let url = URL(string: myUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                 //   print(error)
                }
                if let data = data {
                  //  print(data)
                    let home = self.parseJSON(data)


                }
            }
            task.resume()
        }

    }
    func parseJSON(_ homeData: Data) -> HomeModel? {
        let decoder = JSONDecoder()
        do {
            let results = try! JSONDecoder().decode(RickAndMorty.self, from: homeData)
            self.delegate?.didUpdateHome(self,  rickAndMorty: results)
            
           // print(results)
            
            var resultModel = [ResultadoModel]()
            
            for item in results.results {
                var episodeModel = [String]()
                for episodio in item.episode {
                    episodeModel.append(episodio)
                }
                resultModel.append(ResultadoModel(id: item.id,
                                                  nome: item.name,
                                                  status: item.status,
                                                  especie: item.species,
                                                  tipo: item.type,
                                                  genero: item.gender,
                                                  origem: OriginModel(nome: item.origin.name, urlDaOrigem: item.origin.url),
                                                  localizacao: LocationModel(nome: item.location.name, urlDaLocalizacao: item.location.url),
                                                  imagem: item.image,
                                                  episodio: episodeModel,
                                                  urlDoEpisodio: item.url,
                                                  created: item.created))
            }
            let home = HomeModel(
            informacao: InfoModel(contador: results.info?.count ?? 0,
                                  paginas: results.info?.pages ?? 0,
                                  proximo: results.info?.next ?? "",
                                  antes: results.info?.prev ?? ""),
            resultado: resultModel)
            
            //print(home)
            
            return home
        }
        
    }
  }


