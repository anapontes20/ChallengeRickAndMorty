//
//  HomeModel.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 26/06/23.
//

import Foundation


struct HomeModel {
    let informacao: InfoModel
    let resultado: [ResultadoModel]
}

struct InfoModel {
    let contador: Int
    let paginas: Int
    let proximo: String
    let antes: String
}

struct ResultadoModel {
    let id: Int
    let nome: String
    let status: String
    let especie: String
    let tipo: String
    let genero: String
    let origem: OriginModel
    let localizacao: LocationModel
    let imagem: String
    let episodio: [String]
    let urlDoEpisodio: String
    let created: String
}

struct OriginModel {
    let nome: String
    let urlDaOrigem: String
}

struct LocationModel {
    let nome: String
    let urlDaLocalizacao: String
}
