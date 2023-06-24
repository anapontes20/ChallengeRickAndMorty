//
//  HomeCell.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
    var personagem = CelulaPersonagem()
    
    var celulaPersonagem: UIView = {
       var celula = CelulaPersonagem()
        return celula
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        celulaPersonagem.backgroundColor = .darkGray
        celulaPersonagem.translatesAutoresizingMaskIntoConstraints = false
        celulaPersonagem.layer.masksToBounds = true
        celulaPersonagem.layer.cornerRadius = 20

        
        setupCell()
        //celulaPersonagem = personagem        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        
        addSubview(celulaPersonagem)

        NSLayoutConstraint.activate([
            celulaPersonagem.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            celulaPersonagem.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            celulaPersonagem.topAnchor.constraint(equalTo: topAnchor),
            celulaPersonagem.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
        ])
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        
    }
}
