//
//  DetalhesModel.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation

struct DetalhesModel: Codable {
    let id: Int
    let nome: String
    let status: String
    let especie: String
    let tipo: String
    let genero: String
    let origem: OrigemModel
    let localizacao: LocalizacaoModel
    let imagem: String
    let episodio: [String]
    let url: String
    let created: String
}
       
struct OrigemModel: Codable {
    let name: String
    let url: String
}

struct LocalizacaoModel: Codable {
    let name: String
    let url: String
}
