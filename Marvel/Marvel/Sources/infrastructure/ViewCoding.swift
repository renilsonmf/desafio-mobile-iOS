//
//  ViewCoding.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//

import Foundation

protocol ViewCoding {
    func buildViewHierarchy()
    func setupConstraints()
    func additionalSettings()
}

extension ViewCoding {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        additionalSettings()
    }
    
    func additionalSettings() {
        //
    }
}
