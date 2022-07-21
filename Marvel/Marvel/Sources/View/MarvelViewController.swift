//
//  ViewController.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//

import UIKit

class MarvelViewController: UIViewController {

    let contextView = MarvelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contextView.collectionView.delegate = self
        contextView.collectionView.dataSource = self
    }

    override func loadView() {
        super.loadView()
        view = contextView
    }

}

extension MarvelViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        return size
    }
    
}
