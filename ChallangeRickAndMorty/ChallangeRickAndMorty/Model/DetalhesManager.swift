//
//  DetalhesManager.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 30/06/23.
//

import Foundation

protocol DetalhesManagerDelegate {
    func  didUpdateDetalhes(_ DetalhesManager: DetalhesManager, detalhesData: DetalhesData)
}


struct DetalhesManager {
    
    var myUrl = "https://rickandmortyapi.com/api/character"
    var delegate: DetalhesManagerDelegate?
    
    func fetchDetalhes(id:String) -> String {
        let urlString = "\(myUrl)/\(id)"
       print(urlString)
        return urlString
    }
    
    func callApi(with urlString: String)  {
        guard let idString = urlString else {   }
        let urlPronta = fetchDetalhes(id: urlString)
        print(urlPronta)
        if let url = URL(string: urlPronta) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    
                }
                if let data = data {
                    print(data)
                    let detalhes = self.parseJSON(data)
                    
                }
            }
            task.resume()
        }
        
    }
    func parseJSON(_ detalhesData: Data) -> DetalhesModel? {
        let decoder = JSONDecoder()
        do {
            let results = try! JSONDecoder().decode(DetalhesData.self, from: detalhesData)
            self.delegate?.didUpdateDetalhes(self, detalhesData: results)
            print(results)
            let id = results.id
            let name = results.name
            let status = results.status
            let species = results.species
            let type = results.type
            let gender = results.gender
            let origin = results.origin.name
            let originUrl = results.origin.url
            let location = results.location.name
            let locationUrl = results.location.url
            let image = results.image
            let episode = results.episode
            let url = results.url
            let created = results.created
            
            
            
            let detalhes = DetalhesModel(id: id,
                                         nome: name,
                                         status: status,
                                         especie: species,
                                         tipo: type,
                                         genero: gender,
                                         origem: OrigemModel(name: name, url: url),
                                         localizacao: LocalizacaoModel(name: name, url: url),
                                         imagem: image,
                                         episodio: episode,
                                         url: url,
                                         created: created)
            return detalhes
        }
    }
}
