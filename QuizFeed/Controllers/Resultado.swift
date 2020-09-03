//
//  Resultado.swift
//  QuizFeed
//
//  Created by Mirella Almeida on 02/09/20.
//  Copyright © 2020 Mirella Almeida. All rights reserved.
//

import UIKit

class Resultado: UIViewController {
    
    static let reuseIdentifier = String(describing: Resultado.self)
    
    @IBOutlet weak var pictureAnime: UIImageView!
    @IBOutlet weak var titleAnime: UILabel!
    var animes: [Anime] = []
    @IBOutlet weak var scoreAnime: UILabel!
    
    let randomAnimeID: Int = DataServices.instance.gerarAnimeID()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.load()
    }
    
    func load() {
           
           let stringURL = "https://api.jikan.moe/v3/anime/\(randomAnimeID)"
           let url = URL(string:stringURL)!
           let session = URLSession.shared
           let task = session.dataTask(with: url) { data, response, error in
               do {
                   let decoder = JSONDecoder()
                   let jsonData = try decoder.decode(Animes.self, from: data!)
                   
                   DispatchQueue.main.async {
                       self.animes = jsonData

                   }
               } catch {
                   print("JSON error: \(error.localizedDescription)")
                   DispatchQueue.main.async {
                       self.animes = []
                   }
               }
           }
        
           task.resume()
       }
    
}
 
