//
//  MainCoordinator.swift
//  Marvel
//
//  Created by Renilson Moreira on 20/07/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = MarvelViewModel(items: [])
        let controller = MarvelViewController(viewModel: viewModel)
        navigationController.pushViewController(controller, animated: true)
    }
}
