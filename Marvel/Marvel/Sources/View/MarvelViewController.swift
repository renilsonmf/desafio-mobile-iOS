//
//  ViewController.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//


struct MarvelModel {
    let name: String
    let image: UIImage
    let description: String
}

import UIKit

class MarvelViewController: UIViewController {

    var contextView: MarvelView?
    var viewModel: MarvelViewModelProtocol
    
    init(viewModel: MarvelViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        return viewModel.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCellCollectionView", for: indexPath) as! CustomCellCollectionView
        cell.backgroundColor = .blue
        cell.data = viewModel.items[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}

extension MarvelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellTableView", for: indexPath) as! CustomCellTableView
        cell.data = viewModel.items[indexPath.row]
        return cell
    }
}
