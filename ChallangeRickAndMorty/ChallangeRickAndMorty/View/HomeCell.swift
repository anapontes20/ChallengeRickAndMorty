//
//  HomeCell.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class HomeCell: UITableViewCell {
    
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
            celula.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            celula.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            celula.topAnchor.constraint(equalTo: contentView.topAnchor),
            celula.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
        ])
     backgroundColor = .clear
    contentView.backgroundColor = .clear
        
    }
}
