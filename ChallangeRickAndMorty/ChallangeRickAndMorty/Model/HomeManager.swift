//
//  HomeManager.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation
import CoreLocation


protocol HomeManagerDelegate {
    func  didUpdatehHome(_ HomeManager: HomeManager,home: HomeModel)
    func didFailWithError(error: Error)
}

struct HomeManager {
    let weatherURL =
    "https://rickandmortyapi.com/api/character/"
    
    var delegate: HomeManagerDelegate?
    
    func fetchHome(personagem: String) {
        let urlstring = "\(weatherURL)\(personagem)"
        performRequest(with: urlstring)
        
    }
    
    func performRequest(with urlstring: String){
        
        //1. criar url
        if let url = URL(string: urlstring) {
            print(urlstring)
            //print(url)
            
            //2. criar urlsesion
            
            let session = URLSession(configuration: .default)
            //print(session)
            
            //3.dar uma tarefa de sessão
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    print("printando safedata: \(safeData)")
                    //                    if let home = self.parseJSON(safeData)  {
                    //                        //print(weather)
                    //                        self.delegate?.didUpdateHome(self, home: home)
                    //                    }
                    //                }
                    //            }
                    //4.iniciar a tarefa
                    // print(task)
                    task.resume()
                }
            }
            
            //    func parseJSON(_ HomeData: Data) -> HomeModel? {
            //        let decoder = JSONDecoder()
            //        do {
            //            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            //            print(decodedData)
            //            let id = decodedData.weather[0].id
            //            let temp = decodedData.main.temp
            //            let name = decodedData.name
            //
            //            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            //            return weather
            //        }catch {
            //            delegate?.didFailWithError(error: error)
            //            return nil
            //        }
            
        }
        
    }
}
