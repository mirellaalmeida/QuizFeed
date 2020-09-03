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
    
    private let arrayP2 = [
        imagensPergunta2(nomeDaImagem: "camisa1.png"),
        imagensPergunta2(nomeDaImagem: "calca2.png"),
        imagensPergunta2(nomeDaImagem: "camiseta3.png"),
        imagensPergunta2(nomeDaImagem: "camiseta4.png"),
        imagensPergunta2(nomeDaImagem: "jaqueta5.png"),
        imagensPergunta2(nomeDaImagem: "terninho6.png")
    ]
    
    private let arrayP3 = [
        imagensPergunta3(nomeDaImagem: "camisa1.png"),
        imagensPergunta3(nomeDaImagem: "calca2.png"),
        imagensPergunta3(nomeDaImagem: "camiseta3.png"),
        imagensPergunta3(nomeDaImagem: "camiseta4.png"),
        imagensPergunta3(nomeDaImagem: "jaqueta5.png"),
        imagensPergunta3(nomeDaImagem: "terninho6.png")
    ]
    
    func pegarImagemP1() -> [imagensPergunta1] {
        return arrayP1
    }
    
    func pegarImagemP2() -> [imagensPergunta2] {
        return arrayP2
    }
    
    func pegarImagemP3() -> [imagensPergunta3] {
        return arrayP3
    }
    
    func gerarAnimeID() -> Int {
           
           let randomAnimeID = Int.random(in: 1...99)

           print(randomAnimeID)
           return randomAnimeID
       }
    
}
