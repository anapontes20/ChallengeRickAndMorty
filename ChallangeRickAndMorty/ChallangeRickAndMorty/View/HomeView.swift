//
//  HomeView.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeView: UIView {
    
    let personagem = CelulaPersonagem()
        
    let listaPersonagens: UITableView = {
    let lista = UITableView()
        lista.backgroundColor = .white
    lista.register(HomeCell.self, forCellReuseIdentifier: "home")
    lista.rowHeight = 180
    lista.estimatedRowHeight = 180

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
        
        addSubview(listaPersonagens)

        listaPersonagens.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
    
            listaPersonagens.leadingAnchor.constraint(equalTo: leadingAnchor),
            listaPersonagens.trailingAnchor.constraint(equalTo: trailingAnchor),
            listaPersonagens.topAnchor.constraint(equalTo: topAnchor),
            listaPersonagens.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
        
        
    }
    
}

