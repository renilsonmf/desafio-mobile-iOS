//
//  MarvelViewModel.swift
//  Marvel
//
//  Created by Renilson Moreira on 22/07/22.
//

import Foundation
import UIKit

protocol MarvelViewModelProtocol {
    var items: [MarvelModel] { get }
}

class MarvelViewModel: MarvelViewModelProtocol {
    var items: [MarvelModel]
    
    init(items: [MarvelModel]) {
        self.items = mockModel
    }
    
    var mockModel = [
        MarvelModel(name: "Homem", image: UIImage(named: "img1")!, description: "homem aranha hahaha"),
        MarvelModel(name: "Homem", image: UIImage(named: "img2")!, description: "homem aranha hahaha"),
        MarvelModel(name: "Homem", image: UIImage(named: "img3")!, description: "homem aranha hahaha")
    ]
    
}
