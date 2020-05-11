//
//  InicioViewController.swift
//  UpxPagos
//
//  Created David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController, InicioViewProtocol {

	var presenter: InicioPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func endButtonAction(_ sender: Any) {
        UpxPagos.shared.finalizeProcess()
        dismiss(animated: true, completion: nil)
    }
    
}
