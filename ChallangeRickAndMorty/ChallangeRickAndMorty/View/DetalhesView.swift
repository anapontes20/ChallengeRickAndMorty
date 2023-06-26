//
//  DetalhesView.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class DetalhesView: UIView {

    let imagemPersonagem: UIImageView = {
    let imagem = UIImageView()
    imagem.contentMode = .scaleToFill
    imagem.image = UIImage(named: "rick")
    return imagem
    }()
    
    let nomedoPersonagem: UILabel = {
    let nome = UILabel()
    nome.text = "Rick e Morty"
        nome.textColor = .black
    return nome
        
    }()
    
    let statusdoPersonagem: UILabel = {
    let status = UILabel()
    // fazer uma interpolacao no texto para dizer o status do personagem
    status.text = "Status: "
    status.textColor = .black
    return status
    }()
    
    let especieDoPersonagem: UILabel = {
    let especie = UILabel()
    // fazer uma interpolacao no texto para dizer o status do personagem
    especie.text = "Especie: "
    especie.textColor = .black
    return especie
    }()
    
    let tipodePersonagem: UILabel = {
    let tipo = UILabel()
    // fazer uma interpolacao no texto para dizer o status do personagem
    tipo.text = "Tipo: "
    tipo.textColor = .black
    return tipo
    }()
    
    let ultimaLocalizacao: UILabel = {
    let localizacao = UILabel()
    // fazer uma interpolacao no texto para dizer o status do personagem
    localizacao.text = "Ultima Localização: "
    localizacao.textColor = .black
    return localizacao
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
        
        addSubview(imagemPersonagem)
        addSubview(nomedoPersonagem)
        addSubview(statusdoPersonagem)
        addSubview(especieDoPersonagem)
        addSubview(tipodePersonagem)
        addSubview(ultimaLocalizacao)
    
        
        imagemPersonagem.translatesAutoresizingMaskIntoConstraints = false
        nomedoPersonagem.translatesAutoresizingMaskIntoConstraints = false
        statusdoPersonagem.translatesAutoresizingMaskIntoConstraints = false
        especieDoPersonagem.translatesAutoresizingMaskIntoConstraints = false
        tipodePersonagem.translatesAutoresizingMaskIntoConstraints = false
        ultimaLocalizacao.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          
            imagemPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagemPersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagemPersonagem.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imagemPersonagem.widthAnchor.constraint(equalToConstant: 300),
            imagemPersonagem.heightAnchor.constraint(equalToConstant: 400),
            
            nomedoPersonagem.topAnchor.constraint(equalTo: imagemPersonagem.bottomAnchor),
            nomedoPersonagem.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            statusdoPersonagem.topAnchor.constraint(equalTo: nomedoPersonagem.bottomAnchor),
            statusdoPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
            statusdoPersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            especieDoPersonagem.topAnchor.constraint(equalTo: statusdoPersonagem.bottomAnchor),
            especieDoPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
            especieDoPersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            tipodePersonagem.topAnchor.constraint(equalTo: especieDoPersonagem.bottomAnchor),
            tipodePersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
            tipodePersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            ultimaLocalizacao.topAnchor.constraint(equalTo: tipodePersonagem.bottomAnchor),
            ultimaLocalizacao.leadingAnchor.constraint(equalTo: leadingAnchor),
            ultimaLocalizacao.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            
        ])
        
        
    }

    
    
    
}
