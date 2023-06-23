//
//  HomeCell.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
    var celulaPersonagem: UIView = {
        let celula = UIView()
        celula.backgroundColor = .darkGray
        celula.translatesAutoresizingMaskIntoConstraints = false
        celula.layer.masksToBounds = true
        celula.layer.cornerRadius = 20
        
        return celula
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
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
            celulaPersonagem.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        
        
    }
}
