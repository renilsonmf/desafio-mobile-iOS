//
//  MarvelView.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//

import Foundation
import UIKit

class MarvelView: UIView {
        
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.isPagingEnabled = true
        collection.register(CustomCellCollectionView.self, forCellWithReuseIdentifier: "CustomCellCollectionView")
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(CustomCellTableView.self, forCellReuseIdentifier: "CustomCellTableView")
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .darkGray
        table.tableFooterView = UIView()
       return table
    }()
    
}

extension MarvelView: ViewCoding {
    func buildViewHierarchy() {
        addSubview(collectionView)
        addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4),
            
            tableView.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func additionalSettings() {
        backgroundColor = .orange
    }
}
