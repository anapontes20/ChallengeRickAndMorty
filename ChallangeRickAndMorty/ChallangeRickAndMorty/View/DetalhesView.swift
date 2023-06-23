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
    imagem.image = UIImage(named: "morty")
    return imagem
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
        
        imagemPersonagem.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          
            imagemPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagemPersonagem.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagemPersonagem.topAnchor.constraint(equalTo: topAnchor),
            
        ])
        
        
    }

    
    
    
}
