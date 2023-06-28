import UIKit

var greeting = "Hello, playground"

//MARK: MANAGER
protocol HomeManagerDelegate {
    func didFailWithError(error: Error)
    func  didUpdateHome(_ HomeManager: HomeManager,home: [HomeModel])
    
}

var manager = HomeManager()

struct HomeManager {

    let homeUrl = "https://rickandmortyapi.com/api"
  //  let imageurl = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    
    
    func fetchHome(character: String) {
        let urlstring = "\(homeUrl)/\(character)"
        performRequest(with: urlstring)
    }
}
    func performRequest(with urlstring: String){
        
        var delegate: HomeManagerDelegate?

        if let url = URL(string: urlstring) {

        let session = URLSession(configuration: .default)

            let task = session.manager.dataTask(with: url) { (data, response, error) in if error != nil {
            delegate?.didFailWithError(error: error!)
            return
    }
            if let safeData = data {
            // print("printando safedata: \(safeData)")
            if let home = parseJSON(safeData)  {
                delegate?.didUpdateHome(.home: home)
                    }
                }
            }
            //print(task)
            task.resume()
        }
    }

    func parseJSON(_ homeData: Data) -> HomeModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(HomeData.self, from: homeData)
            let results = decodedData.results
            var homeArray:[HomeModel] = []

            for result in results {
                let id = decodedData.results
                let name = decodedData.results
                let status = decodedData.results
                let image = decodedData.results
        
            let home = HomeModel(id: id, posterDoPersonagem: image, nomeDoPersonagem: name, statusDoPersonagem: status)
            return home
                
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }

    }



//MARK: HOME DATA:
        struct HomeData: Codable {
            let info: [Info]
            let results: [Results]
            let localizacao: [Localizacao]
            let imagem: [Imagem]
        }
        struct Info: Codable {
            let count: Int
            let next: String
        }

        struct Results: Codable {
            let id: Int
            let name: String
            let status: String
            let species: String
            let gender: String
            let location: Localizacao
        }

        struct Localizacao: Codable {
            let name: String
            let url: String
        }
        struct Imagem: Codable {
            let image: String
            let episode: String
        }
// MARK: HOME MODEL
        struct HomeModel{
            
            let id: Int
            let posterDoPersonagem: String
            let nomeDoPersonagem: String
            let statusDoPersonagem: String
        }
