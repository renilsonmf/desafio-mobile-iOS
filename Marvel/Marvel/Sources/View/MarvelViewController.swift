//
//  ViewController.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//


struct MarvelModel {
    let image: UIImage
}

import UIKit

class MarvelViewController: UIViewController {

    var contextView: MarvelView?
    
    let marvelModel = [
        MarvelModel(image: UIImage(named: "img1")!),
        MarvelModel(image: UIImage(named: "img2")!),
        MarvelModel(image: UIImage(named: "img3")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contextView?.collectionView.delegate = self
        contextView?.collectionView.dataSource = self
        
        contextView?.tableView.delegate = self
        contextView?.tableView.dataSource = self
    }

    override func loadView() {
        super.loadView()
        contextView = MarvelView()
        view = contextView
    }

}

extension MarvelViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marvelModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCellCollectionView", for: indexPath) as! CustomCellCollectionView
        cell.backgroundColor = .blue
        cell.data = marvelModel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}

extension MarvelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marvelModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableView", for: indexPath) as! CustomCellTableView
        cell.data = marvelModel[indexPath.row]
        return cell
    }
}
