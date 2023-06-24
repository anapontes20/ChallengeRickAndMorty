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
        nome.textColor = .white
        return nome
    }()
    
    var posterPersonagem: UIImageView = {
        let poster = UIImageView()
        poster.image = UIImage(named: "rick")
        poster.contentMode = .scaleToFill
        return poster
    
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
        addSubview(posterPersonagem)
        
        nomePersonagem.translatesAutoresizingMaskIntoConstraints = false
        posterPersonagem.translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([
        nomePersonagem.topAnchor.constraint(equalTo: topAnchor),
      //nomePersonagem.centerXAnchor.constraint(equalTo: centerXAnchor),
        nomePersonagem.bottomAnchor.constraint(equalTo: bottomAnchor),
       //nomePersonagem.centerYAnchor.constraint(equalTo: centerYAnchor),
        nomePersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
        nomePersonagem.leadingAnchor.constraint(equalTo: posterPersonagem.trailingAnchor),
        
        posterPersonagem.widthAnchor.constraint(equalToConstant: 150),
        posterPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
        //posterPersonagem.trailingAnchor.constraint(equalTo:trailingAnchor),
        posterPersonagem.heightAnchor.constraint(equalToConstant: 150),
        posterPersonagem.topAnchor.constraint(equalTo: topAnchor),
        
        
        ])
        
    }

}
