//
//  CelulaPersonagem.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class CelulaPersonagem: UIView {
    
    var containerView: UIView = {
        let view = UIView ()
        view.backgroundColor = .darkGray
        view.layer.cornerRadius = 20
        return view
        
    }()
  
    var posterPersonagem: UIImageView = {
        let poster = UIImageView()
        poster.image = UIImage(named: "rick")
        poster.clipsToBounds = true
        poster.layer.cornerRadius = 20
        poster.contentMode = .scaleToFill
        return poster
    
    }()
    
    var statusDoPersonagem: UILabel = {
    let status = UILabel()
    status.text = "Status: "
    return status
    }()
    
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
        
        addSubview(containerView)
        addSubview(posterPersonagem)
        addSubview(nomePersonagem)
        addSubview(statusDoPersonagem)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        nomePersonagem.translatesAutoresizingMaskIntoConstraints = false
        posterPersonagem.translatesAutoresizingMaskIntoConstraints = false
        statusDoPersonagem.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([

        containerView.topAnchor.constraint(equalTo: topAnchor),
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
        containerView.widthAnchor.constraint(equalToConstant: 150),
        containerView.heightAnchor.constraint(equalToConstant: 150),

        posterPersonagem.widthAnchor.constraint(equalToConstant: 150),
        posterPersonagem.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
        posterPersonagem.heightAnchor.constraint(equalToConstant: 150),
        posterPersonagem.topAnchor.constraint(equalTo: containerView.topAnchor),
        
        nomePersonagem.topAnchor.constraint(equalTo: topAnchor),
        nomePersonagem.leadingAnchor.constraint(equalTo: posterPersonagem.trailingAnchor, constant: 10),
       // nomePersonagem.bottomAnchor.constraint(equalTo: statusDoPersonagem.topAnchor),
//        nomePersonagem.centerXAnchor.constraint(equalTo: posterPersonagem.centerXAnchor, constant: 100),
//        nomePersonagem.centerYAnchor.constraint(equalTo: posterPersonagem.centerYAnchor, constant: -60),
        //nomePersonagem.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
//        nomePersonagem.topAnchor.constraint(equalTo: containerView.topAnchor),
//        nomePersonagem.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
//        nomePersonagem.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
//        nomePersonagem.leadingAnchor.constraint(equalTo: posterPersonagem.trailingAnchor),
        statusDoPersonagem.leadingAnchor.constraint(equalTo: posterPersonagem.trailingAnchor, constant: 10),
        statusDoPersonagem.topAnchor.constraint(equalTo: nomePersonagem.bottomAnchor),



        ])
        
    }

}
