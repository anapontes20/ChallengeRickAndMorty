//
//  HomeManager.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation
import CoreLocation


protocol HomeManagerDelegate {
    func  didUpdateHome(_ HomeManager: HomeManager,home: HomeModel)
    func didFailWithError(error: Error)
}

struct HomeManager {
    let homeurl =
    "https://rickandmortyapi.com/api"
    
    var delegate: HomeManagerDelegate?
    
    func fetchHome(personagem: String) {
        let urlstring = "\(homeurl)/\(personagem)"
        performRequest(with: urlstring)
        
    }
    
    func performRequest(with urlstring: String){
        
        if let url = URL(string: urlstring) {
            print(urlstring)
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    print("printando safedata: \(safeData)")
                    if let home = self.parseJSON(safeData)  {
                        self.delegate?.didUpdateHome(self, home: home)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ homeData: Data) -> HomeModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(HomeData.self, from: homeData)
            print(decodedData)
            let id = decodedData.id
            let name = decodedData.name
            let status = decodedData.status
            let image = decodedData.image
            
            let home = HomeModel(id: id, posterDoPersonagem: image, nomeDoPersonagem: name, statusDoPersonagem: status)

            return home
        }catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
    
}
