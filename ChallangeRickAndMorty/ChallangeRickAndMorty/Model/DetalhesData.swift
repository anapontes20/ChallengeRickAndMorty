//
//  ModelDetalhes.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation

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

    

