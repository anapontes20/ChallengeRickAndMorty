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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
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
