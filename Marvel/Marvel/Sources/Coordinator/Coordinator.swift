//
//  Coordinator.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
