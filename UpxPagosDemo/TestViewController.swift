//
//  TestViewController.swift
//
//  Created by David on 11/05/20.
//  Copyright © 2020 Zeus. All rights reserved.
//

import UIKit
import UpxPagos

class TestViewController: UIViewController {
    
    
    override func viewDidLoad() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - 40, height: 40))
        button.setTitle("Lanzar framework", for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }
    
    @objc func nextVC() {
            UpxPagos.shared.setConfiguration(rootViewController: self, enviroment: .development, apiKey: "", delegate: self)
            UpxPagos.shared.initialModule()
    }
    
    
    
    
}

extension TestViewController: UpxPagosDelegate {
    func didEnd() {
        print("Terminó el proceso")
    }
}
