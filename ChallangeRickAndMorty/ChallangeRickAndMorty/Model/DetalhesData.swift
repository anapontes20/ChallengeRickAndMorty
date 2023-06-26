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
    let location: String
    let gender: String
}
