//
//  DetalhesViewController.swift
//  ChallangeRickAndMorty
//
//  Created by Ana Pontes on 23/06/23.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    let detalhesView = DetalhesView()
    var detalhesManager = DetalhesManager()
    
    var referenciaData: DetalhesData?
    var selectedCharacterID: Int = 0 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = detalhesView
        view.backgroundColor = .white

        envioDoID()
    }
    
    func envioDoID() {
        let personagemID = String(selectedCharacterID)
        detalhesManager.fetchDetalhes(id: personagemID)
    }

}
    //MARK: - DELEGATE DETALHES
    extension DetalhesViewController: DetalhesManagerDelegate {
        func didUpdateDetalhes(_ DetalhesManager: DetalhesManager, detalhesData: DetalhesData) {
            referenciaData = detalhesData
            
            DispatchQueue.main.async {
                self.referenciaData = detalhesData
                
            }
            
        }
        
        
        
    }

