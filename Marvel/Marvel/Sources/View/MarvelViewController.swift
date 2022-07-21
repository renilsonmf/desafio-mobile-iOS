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
    }

    override func loadView() {
        super.loadView()
        view = contextView
    }

}

