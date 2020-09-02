//
//  ImageCell.swift
//  QuizFeed
//
//  Created by Mirella Almeida on 31/08/20.
//  Copyright © 2020 Mirella Almeida. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    static let reuseIdentifier = String(describing: ImageCell.self)
    
    @IBOutlet weak var imagemAlternativas: UIImageView!
    
    func updateViews(imagem: imagensPergunta1) {
        imagemAlternativas.image = UIImage(named: imagem.nomeDaImagem)
    }
    
    override func layoutSubviews() {
        // cell rounded section
        self.layer.cornerRadius = 25.0
        self.layer.borderWidth = 5.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
        
        // cell shadow section
        self.contentView.layer.cornerRadius = 25.0
        self.contentView.layer.borderWidth = 0.2
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.2
        self.layer.cornerRadius = 15.0
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
