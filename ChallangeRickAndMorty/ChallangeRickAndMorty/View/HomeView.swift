//
//  HomeView.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeView: UIView {
    
    let personagem = CelulaPersonagem()
    
    let titulo: UILabel = {
    let label = UILabel()
    label.text = "Personagens"
    label.textColor = .white
    return label
    }()
    
    let listaPersonagens: UITableView = {
    let lista = UITableView()
    lista.backgroundColor = .clear
    lista.register(HomeCell.self, forCellReuseIdentifier: "home")
    lista.rowHeight = 150
    lista.estimatedRowHeight = 150

    return lista
    }()
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        
        
        addSubview(titulo)
        addSubview(listaPersonagens)

        
        titulo.translatesAutoresizingMaskIntoConstraints = false
        listaPersonagens.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          
            titulo.topAnchor.constraint(equalTo: topAnchor, constant: 50 ),
            titulo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
            titulo.trailingAnchor.constraint(equalTo: trailingAnchor,constant: 150),
            
            listaPersonagens.leadingAnchor.constraint(equalTo: leadingAnchor),
            listaPersonagens.trailingAnchor.constraint(equalTo: trailingAnchor),
            listaPersonagens.topAnchor.constraint(equalTo: topAnchor),
            listaPersonagens.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
        
        
    }
    
}

