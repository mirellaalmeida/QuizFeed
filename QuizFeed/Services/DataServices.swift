//
//  DataServices.swift
//  QuizFeed
//
//  Created by Mirella Almeida on 31/08/20.
//  Copyright © 2020 Mirella Almeida. All rights reserved.
//

import Foundation

class DataServices {
    static let instance = DataServices()
    
    private let arrayP1 = [
        imagensPergunta1(nomeDaImagem: "camisa1.png"),
        imagensPergunta1(nomeDaImagem: "calca2.png"),
        imagensPergunta1(nomeDaImagem: "camiseta3.png"),
        imagensPergunta1(nomeDaImagem: "camiseta4.png"),
        imagensPergunta1(nomeDaImagem: "jaqueta5.png"),
        imagensPergunta1(nomeDaImagem: "terninho6.png")
    ]
    
    func pegarImagemP1() -> [imagensPergunta1] {
        return arrayP1
    }
}
