//
//  UIViewController+navigation.swift
//  UpxPagos
//
//  Created by David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func nextVC(_ vc: UIViewController, animated: Bool) {
        if let navigationController = navigationController {
            navigationController.pushViewController(vc, animated: animated)
        } else {
            present(vc, animated: animated)
        }
    }
    
    func dismissAny(animated: Bool) {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        } else {
            dismiss(animated: animated, completion: nil)
        }
    }
    
}
