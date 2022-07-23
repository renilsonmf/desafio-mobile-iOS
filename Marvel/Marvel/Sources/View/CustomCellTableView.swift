//
//  CustomCellTableView.swift
//  Marvel
//
//  Created by Renilson Moreira on 22/07/22.
//

import Foundation
import UIKit

class CustomCellTableView: UITableViewCell {
    
    var data: MarvelModel? {
        didSet {
            carroucelImage.image = data?.image
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .white
        container.layer.cornerRadius = 15
        return container
    }()
    
    lazy var carroucelImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "img2")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
}

extension CustomCellTableView: ViewCoding {
    func buildViewHierarchy() {
        addSubview(container)
        container.addSubview(carroucelImage)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            container.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            carroucelImage.topAnchor.constraint(equalTo: container.topAnchor, constant: 10),
            carroucelImage.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            carroucelImage.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -10),

            carroucelImage.heightAnchor.constraint(equalToConstant: 100),
            carroucelImage.widthAnchor.constraint(equalToConstant: 100)
            
        ])
    }
    
    func additionalSettings() {
        self.backgroundColor = .darkGray
    }
    
}
