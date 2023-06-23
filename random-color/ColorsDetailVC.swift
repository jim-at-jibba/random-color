//
//  ColorsDetailVC.swift
//  random-color
//
//  Created by James Best on 23/06/2023.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }
}
