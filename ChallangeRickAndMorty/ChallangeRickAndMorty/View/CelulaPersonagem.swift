//
//  CelulaPersonagem.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class CelulaPersonagem: UIView {

    
    var nomePersonagem: UILabel = {
        let nome = UILabel()
        nome.text = "Morty"
        nome.textColor = .black
        return nome
    }()
    
    func setupCell() {
        addSubview(nomePersonagem)
        
        nomePersonagem.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
        nomePersonagem.topAnchor.constraint(equalTo: topAnchor),
        nomePersonagem.centerXAnchor.constraint(equalTo: centerXAnchor),
        nomePersonagem.centerYAnchor.constraint(equalTo: centerYAnchor),
        nomePersonagem.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
        
    }

}
