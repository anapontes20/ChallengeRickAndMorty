//
//  HomeCell.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
    var identifier = "home"
    var celula = CelulaPersonagem()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        
        addSubview(contentView)
        contentView.addSubview(celula)
                
        NSLayoutConstraint.activate([
            celula.topAnchor.constraint(equalTo: contentView.topAnchor),
            celula.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            celula.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            celula.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        backgroundColor = .clear
        
    }
}
