//
//  CustomCellCollectionView.swift
//  Marvel
//
//  Created by Renilson Moreira on 22/07/22.
//

import Foundation
import UIKit

class CustomCellCollectionView: UICollectionViewCell {
    
    var data: MarvelModel? {
        didSet {
            carroucelImage.image = data?.image
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var carroucelImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
}

extension CustomCellCollectionView: ViewCoding {
    func buildViewHierarchy() {
        addSubview(carroucelImage)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            carroucelImage.topAnchor.constraint(equalTo: topAnchor),
            carroucelImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            carroucelImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            carroucelImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    
}
