import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

struct RickAndMorty: Codable {
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String
        let prev: String
    }
    
    struct Results: Codable {
        let id: Int
        let name: String
        let status: String
        let species: String
        let type: String
        let gender: String
        let origin: [ Origin]
    }
    
    struct Origin: Codable {
        let name: String
        let url: String
    }
    
    struct Location: Codable{
        let name: String
        let url: String
    }
    
    struct Image: Codable {
        let image: String
        let episode: [String]
    }
    
    struct Url: Codable {
        let url: String
        let created: String
    }
    
    
}

class HomeManager {

    func fetchCharacters(completion: @escaping ([Character]?, Error?) -> Void) {
        let urlString = "https://rickandmortyapi.com/api/character"
        print(urlString)
        guard let url = URL(string: urlString) else {
            completion(nil, NSError(domain: "InvalidURL", code: 0, userInfo: nil))
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let data = data {
                print(data)
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(RickAndMorty.self, from: data)
                    
//completion(response, nil)
                } catch {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }

    // Exemplo de uso
//    fetchCharacters { (characters, error) in
//        if let error = error {
//            print("Ocorreu um erro: \(error.localizedDescription)")
//            return
//        }
//
//        if let characters = characters {
//            // Faça algo com os personagens retornados
//            for character in characters {
//                print(character.name)
//            }
//        }
   }
