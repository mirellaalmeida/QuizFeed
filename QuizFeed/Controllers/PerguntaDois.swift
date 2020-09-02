//
//  PerguntaDois.swift
//  QuizFeed
//
//  Created by Mirella Almeida on 02/09/20.
//  Copyright © 2020 Mirella Almeida. All rights reserved.
//

import Foundation
import UIKit

class PerguntaDois: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    enum Section {
        case main
    }
    
    static let reuseIdentifier = String(describing: PerguntaDois.self)
    
    @IBOutlet weak var collectionViewP2: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewP2.collectionViewLayout = configureLayout()
        collectionViewP2.delegate = self
        collectionViewP2.dataSource = self
    }
    
    func configureLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize (widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    
        let section = NSCollectionLayoutSection(group: group)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return DataServices.instance.pegarImagemP2().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageP2Cell", for: indexPath) as? ImageP2Cell{
            let imagemP2 = DataServices.instance.pegarImagemP2()[indexPath.row]
            cell.updateViews(imagem: imagemP2)
            
            cell.tocouCelulaAlternativaP2 = {
                // implement your logic here, e.g. call preformSegue()
                self.performSegue(withIdentifier: "PerguntaTres", sender: self)
            }
            return cell
        }
        return UICollectionViewCell()
    }
    
}
