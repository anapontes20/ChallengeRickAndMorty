import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

struct DetalhesData: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: OriginDetalhes
    let location: LocationDetalhes
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
       
struct OriginDetalhes: Codable {
    let name: String
    let url: String
}

struct LocationDetalhes: Codable {
    let name: String
    let url: String
}

//struct DetalhesModel: Codable {
//    let id: Int
//    let nome: String
//    let status: String
//    let especie: String
//    let tipo: String
//    let genero: String
//    let origem: OrigemModel
//    let localizacao: LocalizacaoModel
//    let imagem: String
//    let episodio: [String]
//    let url: String
//    let created: String
//}
//
//struct OrigemModel: Codable {
//    let name: String
//    let url: String
//}
//
//struct LocalizacaoModel: Codable {
//    let name: String
//    let url: String
//}


struct DetalhesManager {
    
    let myUrl = "https://rickandmortyapi.com/api/character"
    
    func fetchDetalhes(id:Int) {
        var urlString = "\(myUrl)/\(2)"
    }
    
    func callApi(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error)
                }
                if let data = data {
                    print(data)
                    
                    
                }
            }
            task.resume()
        }
        
    }
    //    func parseJSON(_ detalhesData: Data) -> DetalhesModel? {
    //        let decoder = JSONDecoder()
    //        do {
    //            let results = try! JSONDecoder().decode(DetalhesData.self, from: detalhesData)
    //            print(results)
    //            let id = results.id
    //            let name = results.name
    //            let status = results.status
    //            let species = results.species
    //            let type = results.type
    //            let gender = results.gender
    //            let origin = results.origin.name
    //            let originUrl = results.origin.url
    //            let location = results.location.name
    //            let locationUrl = results.location.url
    //            let image = results.image
    //            let episode = results.episode
    //            let url = results.url
    //            let created = results.created
    //
    //
    //
    //            let detalhes = DetalhesModel(id: id,
    //                                         nome: name,
    //                                         status: status,
    //                                         especie: species,
    //                                         tipo: type,
    //                                         genero: gender,
    //                                         origem: OrigemModel(name: name, url: url),
    //                                         localizacao: LocalizacaoModel(name: name, url: url),
    //                                         imagem: image,
    //                                         episodio: episode,
    //                                         url: url,
    //                                         created: created)
    //            return detalhes
    //        } catch {
    //            return nil
    //        }
    //    }
    //}
}
